#!/usr/bin/env ruby

require 'csv'
require 'yaml'

class NUTS < Data.define(:country_code, :nuts_code, :nuts_label, :nuts_level, :country_order)
  NUTS_LABEL_SEPARATOR = "/"
  def labels
    has_variants = nuts_label.include?(NUTS_LABEL_SEPARATOR)

    if has_variants
      nuts_label.split(NUTS_LABEL_SEPARATOR)
    else
      nuts_label
    end
  end

  def level
    nuts_level.ord - 48
  end

  def to_export
    [
      nuts_code,
      {
        "level" => level,
        "label" => labels
      }
    ]
  end
end

module ToProc
  def to_proc = method(:call).to_proc
end

module Converter
  CSV_FILE_SEPARATOR = ";"
  HEADERS = ["Country code", "NUTS Code", "NUTS label", "NUTS level", "Country order"]

  def self.call(src_csv_filepath, dst_yml_filepath)
    write_yml_data =
      WrireYMLData
        .to_proc
        .curry[dst_yml_filepath]

    limit_to_spain = Proc.new { |nuts_by_country_code_hash| nuts_by_country_code_hash.slice("ES") }

    src_csv_filepath
      .then(&ReadCSVData)
      .then(&ParseNUTS)
      .then(&TransformForExport)
      .then(&limit_to_spain)
      .then(&write_yml_data)

    true
  end

  module ReadCSVData
    extend ToProc

    def self.call(filepath)
      csv_enumerator = CSV.foreach(filepath, headers: true, col_sep: CSV_FILE_SEPARATOR)
      csv_rows = csv_enumerator.map(&:itself)
      csv_rows
    end
  end

  module ParseNUTS
    extend ToProc

    def self.call(csv_rows)
      fetch_row_values    = Proc.new { |row| HEADERS.map { |field_name| row.fetch(field_name) } }
      empty_row           = Proc.new { |row_values| row_values.all?(&:nil?) }
      build_nuts_instance = Proc.new { |row_values| NUTS.new(*row_values) }

      parsed_nuts = csv_rows
        .map(&fetch_row_values)
        .reject(&empty_row)
        .map(&build_nuts_instance)

      parsed_nuts
    end
  end

  module TransformForExport
    extend ToProc

    def self.call(parsed_nuts)
      to_nuts_hash = Proc.new { |arr| arr.to_h(&:to_export) }

      nuts_by_country_code_hash =
        parsed_nuts
          .group_by(&:country_code)
          .transform_values(&to_nuts_hash)

      nuts_by_country_code_hash
    end
  end

  module WrireYMLData
    extend ToProc

    def self.call(filepath, data)
      File.open(filepath, 'w') do |file|
        file.write(data.to_yaml)
      end
    end
  end
end


if __FILE__ == $0
  if ARGV.length != 2
    puts "Usage: ruby #{$0} <source_csv_file> <destination_yml_file>"
    puts "Example: ruby #{$0} data.csv output.yml"
    exit 1
  end

  src_csv_filepath = ARGV[0]
  dst_yml_filepath = ARGV[1]

  unless File.exist?(src_csv_filepath)
    puts "Error: Source CSV file '#{src_csv_filepath}' does not exist"
    exit 1
  end

  begin
    Converter.(src_csv_filepath, dst_yml_filepath)
  rescue => e
    puts e.inspect
    exit 1
  end

  puts "Conversion completed successfully!"
end
