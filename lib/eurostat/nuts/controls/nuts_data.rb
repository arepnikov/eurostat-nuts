module Eurostat
  module NUTS
    module Controls
      module NUTSData
        def self.example
          [
            *Spain.nuts_entries,
            *Poland.nuts_entries
          ]
        end

        module Raw
          def self.example
            {
              Spain.country_code => Spain.raw_nuts_entries,
              Poland.country_code => Poland.raw_nuts_entries,
            }
          end
        end

        module Spain
          def self.country_code
            "ES"
          end

          def self.nuts_entries
            [
              { code: "ES1",   level: 1, labels: ["Noroeste"] },
              { code: "ES11",  level: 2, labels: ["Galicia"] },
              { code: "ES111", level: 3, labels: ["A Coruña"] },
              { code: "ES112", level: 3, labels: ["Lugo"] },
              { code: "ES2",   level: 1, labels: ["Noreste"] },
              { code: "ES21",  level: 2, labels: ["País Vasco"] },
              { code: "ES211", level: 3, labels: ["Álava", "Araba"] },
              { code: "ES212", level: 3, labels: ["Gipuzkoa"] },
              { code: "ES3"  , level: 1, labels: ["Comunidad de Madrid"] },
              { code: "ES30" , level: 2, labels: ["Comunidad de Madrid"] },
              { code: "ES300", level: 3, labels: ["Madrid"] }
            ]
          end

          def self.raw_nuts_entries
            {
              "ES1"   => { "level" => 1, "label" => "Noroeste" },
              "ES11"  => { "level" => 2, "label" => "Galicia" },
              "ES111" => { "level" => 3, "label" => "A Coruña" },
              "ES112" => { "level" => 3, "label" => "Lugo" },
              "ES2"   => { "level" => 1, "label" => "Noreste" },
              "ES21"  => { "level" => 2, "label" => "País Vasco" },
              "ES211" => { "level" => 3, "label" => ["Álava", "Araba"] },
              "ES212" => { "level" => 3, "label" => "Gipuzkoa" },
              "ES3"   => { "level" => 1, "label" => "Comunidad de Madrid" },
              "ES30"  => { "level" => 2, "label" => "Comunidad de Madrid" },
              "ES300" => { "level" => 3, "label" => "Madrid" }
            }
          end
        end

        module Poland
          def self.country_code
            "PL"
          end

          def self.nuts_entries
            [
              { code: "PL5",   level: 1, labels: ["Makroregion południowo-zachodni"] },
              { code: "PL51",  level: 2, labels: ["Dolnośląskie"] },
              { code: "PL514", level: 3, labels: ["Miasto Wrocław"] },
              { code: "PL515", level: 3, labels: ["Jeleniogórski"] },
              { code: "PL516", level: 3, labels: ["Legnicko-głogowski"] },
              { code: "PL9",   level: 1, labels: ["Makroregion województwo mazowieckie"] },
              { code: "PL91",  level: 2, labels: ["Warszawski stołeczny"] },
              { code: "PL911", level: 3, labels: ["Miasto Warszawa"] },
              { code: "PL92",  level: 2, labels: ["Mazowiecki regionalny"] },
              { code: "PL926", level: 3, labels: ["Żyrardowski"] }
            ]
          end

          def self.raw_nuts_entries
            {
              "PL5"   => { "level" => 1, "label" => "Makroregion południowo-zachodni" },
              "PL51"  => { "level" => 2, "label" => "Dolnośląskie" },
              "PL514" => { "level" => 3, "label" => "Miasto Wrocław" },
              "PL515" => { "level" => 3, "label" => "Jeleniogórski" },
              "PL516" => { "level" => 3, "label" => "Legnicko-głogowski" },
              "PL9"   => { "level" => 1, "label" => "Makroregion województwo mazowieckie" },
              "PL91"  => { "level" => 2, "label" => "Warszawski stołeczny" },
              "PL911" => { "level" => 3, "label" => "Miasto Warszawa" },
              "PL92"  => { "level" => 2, "label" => "Mazowiecki regionalny" },
              "PL926" => { "level" => 3, "label" => "Żyrardowski" }
            }
          end
        end
      end
    end
  end
end
