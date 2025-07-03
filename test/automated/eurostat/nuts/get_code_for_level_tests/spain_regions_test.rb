require_relative '../../../automated_init'

module Eurostat
  module NUTS
    module GetCodeForLevelTests
      class SpainRegionsTest < Minitest::Test
        def test_noroeste
          skip
          nuts_label = "Noroeste"
          assert_equal "ES1", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_nil Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_nil Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_galicia
          skip
          nuts_label = "Galicia"
          assert_equal "ES1", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES11", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_nil Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_a_coruna
          skip
          nuts_label = "A Coruña"
          assert_equal "ES1", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES11", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES111", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_lugo
          skip
          nuts_label = "Lugo"
          assert_equal "ES1", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES11", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES112", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_ourense
          skip
          nuts_label = "Ourense"
          assert_equal "ES1", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES11", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES113", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_pontevedra
          skip
          nuts_label = "Pontevedra"
          assert_equal "ES1", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES11", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES114", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_principado_de_asturias
          skip
          nuts_label = "Principado de Asturias"
          assert_equal "ES1", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES12", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_nil Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_asturias
          skip
          nuts_label = "Asturias"
          assert_equal "ES1", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES12", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES120", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_noreste
          skip
          nuts_label = "Noreste"
          assert_equal "ES2", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_nil Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_nil Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_pais_vasco
          skip
          nuts_label = "País Vasco"
          assert_equal "ES2", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES21", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_nil Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_araba
          skip
          nuts_label = "Araba"
          assert_equal "ES2", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES21", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES211", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_alava
          skip
          nuts_label = "Álava"
          assert_equal "ES2", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES21", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES211", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_gipuzkoa
          skip
          nuts_label = "Gipuzkoa"
          assert_equal "ES2", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES21", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES212", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_bizkaia
          skip
          nuts_label = "Bizkaia"
          assert_equal "ES2", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES21", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES213", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_comunidad_foral_de_navarra
          skip
          nuts_label = "Comunidad Foral de Navarra"
          assert_equal "ES2", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES22", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_nil Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_navarra
          skip
          nuts_label = "Navarra"
          assert_equal "ES2", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES22", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES220", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_la_rioja
          skip
          nuts_label = "La Rioja"
          assert_equal "ES2", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES23", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES230", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_aragon
          skip
          nuts_label = "Aragón"
          assert_equal "ES2", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES24", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_nil Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_huesca
          skip
          nuts_label = "Huesca"
          assert_equal "ES2", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES24", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES241", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_teruel
          skip
          nuts_label = "Teruel"
          assert_equal "ES2", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES24", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES242", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_zaragoza
          skip
          nuts_label = "Zaragoza"
          assert_equal "ES2", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES24", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES243", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_comunidad_de_madrid
          skip
          nuts_label = "Comunidad de Madrid"
          assert_equal "ES3", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES30", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_nil Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_madrid
          skip
          nuts_label = "Madrid"
          assert_equal "ES3", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES30", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES300", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_centro
          skip
          nuts_label = "Centro (ES)"
          assert_equal "ES4", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_nil Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_nil Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_castilla_y_leon
          skip
          nuts_label = "Castilla y León"
          assert_equal "ES4", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES41", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_nil Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_avila
          skip
          nuts_label = "Ávila"
          assert_equal "ES4", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES41", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES411", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_burgos
          skip
          nuts_label = "Burgos"
          assert_equal "ES4", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES41", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES412", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_leon
          skip
          nuts_label = "León"
          assert_equal "ES4", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES41", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES413", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_palencia
          skip
          nuts_label = "Palencia"
          assert_equal "ES4", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES41", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES414", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_salamanca
          skip
          nuts_label = "Salamanca"
          assert_equal "ES4", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES41", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES415", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_segovia
          skip
          nuts_label = "Segovia"
          assert_equal "ES4", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES41", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES416", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_soria
          skip
          nuts_label = "Soria"
          assert_equal "ES4", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES41", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES417", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_valladolid
          skip
          nuts_label = "Valladolid"
          assert_equal "ES4", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES41", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES418", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_zamora
          skip
          nuts_label = "Zamora"
          assert_equal "ES4", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES41", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES419", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_castilla_la_mancha
          skip
          nuts_label = "Castilla-La Mancha"
          assert_equal "ES4", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES42", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_nil Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_albacete
          skip
          nuts_label = "Albacete"
          assert_equal "ES4", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES42", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES421", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_ciudad_real
          skip
          nuts_label = "Ciudad Real"
          assert_equal "ES4", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES42", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES422", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_cuenca
          skip
          nuts_label = "Cuenca"
          assert_equal "ES4", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES42", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES423", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_guadalajara
          skip
          nuts_label = "Guadalajara"
          assert_equal "ES4", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES42", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES424", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_toledo
          skip
          nuts_label = "Toledo"
          assert_equal "ES4", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES42", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES425", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_extremadura
          skip
          nuts_label = "Extremadura"
          assert_equal "ES4", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES43", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_nil Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_badajoz
          skip
          nuts_label = "Badajoz"
          assert_equal "ES4", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES43", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES431", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_caceres
          skip
          nuts_label = "Cáceres"
          assert_equal "ES4", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES43", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES432", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_este
          skip
          nuts_label = "Este"
          assert_equal "ES5", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_nil Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_nil Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_cataluna
          skip
          nuts_label = "Cataluña"
          assert_equal "ES5", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES51", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_nil Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_barcelona
          skip
          nuts_label = "Barcelona"
          assert_equal "ES5", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES51", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES511", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_girona
          skip
          nuts_label = "Girona"
          assert_equal "ES5", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES51", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES512", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_lleida
          skip
          nuts_label = "Lleida"
          assert_equal "ES5", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES51", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES513", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_tarragona
          skip
          nuts_label = "Tarragona"
          assert_equal "ES5", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES51", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES514", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_comunitat_valenciana
          skip
          nuts_label = "Comunitat Valenciana"
          assert_equal "ES5", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES52", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_nil Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_alicante
          skip
          nuts_label = "Alicante"
          assert_equal "ES5", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES52", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES521", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_alacant
          skip
          nuts_label = "Alacant"
          assert_equal "ES5", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES52", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES521", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_castellon
          skip
          nuts_label = "Castellón"
          assert_equal "ES5", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES52", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES522", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_castello
          skip
          nuts_label = "Castelló"
          assert_equal "ES5", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES52", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES522", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_valencia_spanish
          skip
          nuts_label = "Valencia"
          assert_equal "ES5", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES52", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES523", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_valencia_valencian
          skip
          nuts_label = "València"
          assert_equal "ES5", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES52", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES523", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_illes_balears
          skip
          nuts_label = "Illes Balears"
          assert_equal "ES5", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES53", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_nil Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_eivissa_y_formentera
          skip
          nuts_label = "Eivissa y Formentera"
          assert_equal "ES5", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES53", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES531", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_mallorca
          skip
          nuts_label = "Mallorca"
          assert_equal "ES5", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES53", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES532", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_menorca
          skip
          nuts_label = "Menorca"
          assert_equal "ES5", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES53", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES533", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_sur
          skip
          nuts_label = "Sur"
          assert_equal "ES6", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_nil Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_nil Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_andalucia
          skip
          nuts_label = "Andalucía"
          assert_equal "ES6", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES61", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_nil Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_almeria
          skip
          nuts_label = "Almería"
          assert_equal "ES6", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES61", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES611", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_cadiz
          skip
          nuts_label = "Cádiz"
          assert_equal "ES6", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES61", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES612", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_cordoba
          skip
          nuts_label = "Córdoba"
          assert_equal "ES6", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES61", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES613", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_granada
          skip
          nuts_label = "Granada"
          assert_equal "ES6", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES61", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES614", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_huelva
          skip
          nuts_label = "Huelva"
          assert_equal "ES6", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES61", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES615", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_jaen
          skip
          nuts_label = "Jaén"
          assert_equal "ES6", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES61", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES616", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_malaga
          skip
          nuts_label = "Málaga"
          assert_equal "ES6", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES61", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES617", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_sevilla
          skip
          nuts_label = "Sevilla"
          assert_equal "ES6", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES61", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES618", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_region_de_murcia
          skip
          nuts_label = "Región de Murcia"
          assert_equal "ES6", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES62", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_nil Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_murcia
          skip
          nuts_label = "Murcia"
          assert_equal "ES6", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES62", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES620", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_ciudad_de_ceuta
          skip
          nuts_label = "Ciudad de Ceuta"
          assert_equal "ES6", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES63", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_nil Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_ceuta
          skip
          nuts_label = "Ceuta"
          assert_equal "ES6", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES63", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES630", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_ciudad_de_melilla
          skip
          nuts_label = "Ciudad de Melilla"
          assert_equal "ES6", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES64", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_nil Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_melilla
          skip
          nuts_label = "Melilla"
          assert_equal "ES6", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES64", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES640", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_canarias
          skip
          nuts_label = "Canarias"
          assert_equal "ES7", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES70", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_nil Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_el_hierro
          skip
          nuts_label = "El Hierro"
          assert_equal "ES7", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES70", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES703", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_fuerteventura
          skip
          nuts_label = "Fuerteventura"
          assert_equal "ES7", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES70", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES704", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_gran_canaria
          skip
          nuts_label = "Gran Canaria"
          assert_equal "ES7", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES70", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES705", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_la_gomera
          skip
          nuts_label = "La Gomera"
          assert_equal "ES7", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES70", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES706", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_la_palma
          skip
          nuts_label = "La Palma"
          assert_equal "ES7", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES70", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES707", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_lanzarote
          skip
          nuts_label = "Lanzarote"
          assert_equal "ES7", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES70", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES708", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end

        def test_tenerife
          skip
          nuts_label = "Tenerife"
          assert_equal "ES7", Eurostat::NUTS.get_code_for_level(nuts_label, 1)
          assert_equal "ES70", Eurostat::NUTS.get_code_for_level(nuts_label, 2)
          assert_equal "ES709", Eurostat::NUTS.get_code_for_level(nuts_label, 3)
        end
      end
    end
  end
end
