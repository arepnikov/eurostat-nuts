#!/usr/bin/env ruby

require 'csv'
require 'yaml'

COUNTRY_CODE_LABEL = "Country code"
NUTS_CODE_LABEL = "NUTS Code"
NUTS_LABEL_LABEL = "NUTS label"
NUTS_LEVEL_LABEL = "NUTS level"
COUNTRY_ORDER_LABEL = "Country order"

NUTS_Row = Data.define(:country_code, :nuts_code, :nuts_label, :nuts_level, :country_order)
# NUTS = Data.define(:nuts_code, :nuts_label)




def read_csv_data(csv_file_path)
  puts "Reading CSV file: #{csv_file_path}"
  # Read CSV with headers into array of hashes
  data = []
  CSV.foreach(csv_file_path, headers: true, col_sep: ';') do |row|
    data << row
  end

  # puts "Successfully read #{data.length} rows"
  # puts "Headers: #{data.first.headers.join(', ')}" if data.any?

  data
rescue CSV::MalformedCSVError => e
  puts "CSV parsing error: #{e.message}"
  exit 1
rescue Errno::ENOENT
  puts "Error: CSV file '#{csv_file_path}' not found"
  exit 1
rescue => e
  puts "Error reading CSV file: #{e.message}"
  exit 1
end

def parse_csv_data(csv_data)
  rows_values =
    csv_data.map do |csv_row|
      csv_row.values_at(COUNTRY_CODE_LABEL, NUTS_CODE_LABEL, NUTS_LABEL_LABEL, NUTS_LEVEL_LABEL, COUNTRY_ORDER_LABEL)
    end

  filtered_rows_values =
    rows_values.reject do |row_values|
      row_values.all?(&:nil?)
    end

  parsed_nuts_rows =
    filtered_rows_values.map do |row_values|
      NUTS_Row.new(*row_values)
    end

  parsed_nuts_rows
end

def process_data(nuts_rows)
  binding.irb
  # TODO:
  # - convert to three Data object nuts_level_one, nuts_level_two, nuts_level_three
  # - group them together in single object, which respond_to method #to_yaml

  # TODO: Add processing logic here
  # For now, just return the data as-is
  processed_data = data

  puts "Processing completed"
  processed_data
end

def write_yaml_data(data, yaml_file_path)
  puts "Writing data to YAML file: #{yaml_file_path}"

  # Write data to YAML file
  File.open(yaml_file_path, 'w') do |file|
    file.write(data.to_yaml)
  end

  puts "Successfully wrote data to #{yaml_file_path}"
rescue => e
  puts "Error writing YAML file: #{e.message}"
  exit 1
end

# Main execution
if __FILE__ == $0
  # Check command line arguments
  if ARGV.length != 2
    puts "Usage: ruby #{$0} <source_csv_file> <destination_yaml_file>"
    puts "Example: ruby #{$0} data.csv output.yml"
    exit 1
  end

  csv_file_path = ARGV[0]
  yaml_file_path = ARGV[1]

  # Validate file paths
  unless File.exist?(csv_file_path)
    puts "Error: Source CSV file '#{csv_file_path}' does not exist"
    exit 1
  end

  # Read CSV data
  csv_data = read_csv_data(csv_file_path)
  nuts_rows = parse_csv_data(csv_data)

  # Process data (placeholder for now)
  processed_data = process_data(nuts_rows)

  # Write to YAML file
  # write_yaml_data(processed_data, yaml_file_path)

  puts "Conversion completed successfully!"
end
