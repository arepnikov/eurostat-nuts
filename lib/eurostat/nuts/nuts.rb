module Eurostat
  module NUTS
    def self.heartbeat
      "I'm alive"
    end

    def self.get_code(label)
      'not_implemented'
    end

    def self.get_code_for_level(label, level)
      'not_implemented'
    end
  end
end
