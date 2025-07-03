module Eurostat
  module NUTS
    module Controls
      module NUTSEntries
        def self.example
          [
            *Spain.nuts_entries,
            *Poland.nuts_entries
          ]
        end

        module RawData
          def self.example
            {
              Spain.country_code => Spain.raw_nuts_entries_data,
              Poland.country_code => Poland.raw_nuts_entries_data,
            }
          end
        end

        module Spain
          def self.country_code
            "ES"
          end

          def self.nuts_entries
            [
              NUTS::Entry::LevelOne  .new(code: "ES1",   labels: ["Noroeste"]),
              NUTS::Entry::LevelTwo  .new(code: "ES11",  labels: ["Galicia"]),
              NUTS::Entry::LevelThree.new(code: "ES111", labels: ["A Coruña"]),
              NUTS::Entry::LevelThree.new(code: "ES112", labels: ["Lugo"]),
              NUTS::Entry::LevelOne  .new(code: "ES2",   labels: ["Noreste"]),
              NUTS::Entry::LevelTwo  .new(code: "ES21",  labels: ["País Vasco"]),
              NUTS::Entry::LevelThree.new(code: "ES211", labels: ["Álava", "Araba"]),
              NUTS::Entry::LevelThree.new(code: "ES212", labels: ["Gipuzkoa"]),
              NUTS::Entry::LevelOne  .new(code: "ES3"  , labels: ["Comunidad de Madrid"]),
              NUTS::Entry::LevelTwo  .new(code: "ES30" , labels: ["Comunidad de Madrid"]),
              NUTS::Entry::LevelThree.new(code: "ES300", labels: ["Madrid"])
            ]
          end

          def self.raw_nuts_entries_data
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
              NUTS::Entry::LevelOne  .new(code: "PL5",   labels: ["Makroregion południowo-zachodni"]),
              NUTS::Entry::LevelTwo  .new(code: "PL51",  labels: ["Dolnośląskie"]),
              NUTS::Entry::LevelThree.new(code: "PL514", labels: ["Miasto Wrocław"]),
              NUTS::Entry::LevelThree.new(code: "PL515", labels: ["Jeleniogórski"]),
              NUTS::Entry::LevelThree.new(code: "PL516", labels: ["Legnicko-głogowski"]),
              NUTS::Entry::LevelOne  .new(code: "PL9",   labels: ["Makroregion województwo mazowieckie"]),
              NUTS::Entry::LevelTwo  .new(code: "PL91",  labels: ["Warszawski stołeczny"]),
              NUTS::Entry::LevelThree.new(code: "PL911", labels: ["Miasto Warszawa"]),
              NUTS::Entry::LevelTwo  .new(code: "PL92",  labels: ["Mazowiecki regionalny"]),
              NUTS::Entry::LevelThree.new(code: "PL926", labels: ["Żyrardowski"])
            ]
          end

          def self.raw_nuts_entries_data
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
