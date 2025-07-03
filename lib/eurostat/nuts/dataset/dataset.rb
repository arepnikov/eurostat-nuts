module Eurostat
  module NUTS
    module Dataset
      FILE_NAME = "nuts2021_nuts2024.yml".freeze

      def self.file_path
        File.expand_path(FILE_NAME, __dir__)
      end

      def self.load_default_file
        YAML.load_file(file_path)
      end
    end
  end
end
