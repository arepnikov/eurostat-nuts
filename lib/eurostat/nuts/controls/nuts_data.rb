module Eurostat
  module NUTS
    module Controls
      module NUTSData
        def self.example
          Configure::Parse::Result.new(
            level_one,
            level_two,
            level_three
          )
        end

        def self.level_one
          [
            *Spain.level_one,
            *Poland.level_one
          ]
        end

        def self.level_two
          [
            *Spain.level_two,
            *Poland.level_two
          ]
        end

        def self.level_three
          [
            *Spain.level_three,
            *Poland.level_three
          ]
        end

        module Raw
          def self.example
            {
              **level_one,
              **level_two,
              **level_three
            }
          end

          def self.level_one
            {
              "level_one" => {
                Spain.country_code => Spain.raw_level_one,
                Poland.country_code => Poland.raw_level_one
              }
            }
          end

          def self.level_two
            {
              "level_two" => {
                Spain.country_code => Spain.raw_level_two,
                Poland.country_code => Poland.raw_level_two
              }
            }
          end

          def self.level_three
            {
              "level_three" => {
                Spain.country_code => Spain.raw_level_three,
                Poland.country_code => Poland.raw_level_three
              }
            }
          end
        end

        module Spain
          def self.country_code
            "ES"
          end

          def self.level_one
            [
              { code: "ES1", labels: ["Noroeste"] },
              { code: "ES2", labels: ["Noreste"] }
            ]
          end

          def self.raw_level_one
            {
              "ES1" => "Noroeste",
              "ES2" => "Noreste"
            }
          end

          def self.level_two
            [
              { code: "ES11", labels: ["Galicia"] },
              { code: "ES21", labels: ["País Vasco"] }
            ]
          end

          def self.raw_level_two
            {
              "ES11" => "Galicia",
              "ES21" => "País Vasco"
            }
          end

          def self.level_three
            [
              { code: "ES111", labels: ["A Coruña"] },
              { code: "ES112", labels: ["Lugo"] },
              { code: "ES211", labels: ["Álava", "Araba"] },
              { code: "ES212", labels: ["Gipuzkoa"] }
            ]
          end

          def self.raw_level_three
            {
              "ES111" => "A Coruña",
              "ES112" => "Lugo",
              "ES211" => ["Álava", "Araba"],
              "ES212" => "Gipuzkoa"
            }
          end
        end

        module Poland
          def self.country_code
            "PL"
          end

          def self.level_one
            [
              { code: "PL5", labels: ["Makroregion południowo-zachodni"] },
              { code: "PL9", labels: ["Makroregion województwo mazowieckie"] }
            ]
          end

          def self.raw_level_one
            {
              "PL5" => "Makroregion południowo-zachodni",
              "PL9" => "Makroregion województwo mazowieckie"
            }
          end

          def self.level_two
            [
              { code: "PL51", labels: ["Dolnośląskie"] },
              { code: "PL91", labels: ["Warszawski stołeczny"] },
              { code: "PL92", labels: ["Mazowiecki regionalny"] }
            ]
          end

          def self.raw_level_two
            {
              "PL51" => "Dolnośląskie",
              "PL91" => "Warszawski stołeczny",
              "PL92" => "Mazowiecki regionalny"
            }
          end

          def self.level_three
            [
              { code: "PL514", labels: ["Miasto Wrocław"] },
              { code: "PL515", labels: ["Jeleniogórski"] },
              { code: "PL516", labels: ["Legnicko-głogowski"] },
              { code: "PL911", labels: ["Miasto Warszawa"] },
              { code: "PL926", labels: ["Żyrardowski"] }
            ]
          end

          def self.raw_level_three
            {
              "PL514" => "Miasto Wrocław",
              "PL515" => "Jeleniogórski",
              "PL516" => "Legnicko-głogowski",
              "PL911" => "Miasto Warszawa",
              "PL926" => "Żyrardowski"
            }
          end
        end
      end
    end
  end
end
