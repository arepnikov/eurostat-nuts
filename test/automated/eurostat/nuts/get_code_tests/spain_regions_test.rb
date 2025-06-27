require_relative '../../../automated_init'

module Eurostat
  module NUTS
    module GetCodeTests
      class SpainRegionsTest < Minitest::Test
        def test_noroeste
          assert_equal "ES1", Eurostat::NUTS.get_code("Noroeste")
        end

        def test_galicia
          assert_equal "ES11", Eurostat::NUTS.get_code("Galicia")
        end

        def test_a_coruna
          assert_equal "ES111", Eurostat::NUTS.get_code("A Coruña")
        end

        def test_lugo
          assert_equal "ES112", Eurostat::NUTS.get_code("Lugo")
        end

        def test_ourense
          assert_equal "ES113", Eurostat::NUTS.get_code("Ourense")
        end

        def test_pontevedra
          assert_equal "ES114", Eurostat::NUTS.get_code("Pontevedra")
        end

        def test_principado_de_asturias
          assert_equal "ES12", Eurostat::NUTS.get_code("Principado de Asturias")
        end

        def test_asturias
          assert_equal "ES120", Eurostat::NUTS.get_code("Asturias")
        end

        def test_cantabria
          assert_equal "ES13", Eurostat::NUTS.get_code("Cantabria")
        end

        def test_cantabria_province
          assert_equal "ES130", Eurostat::NUTS.get_code("Cantabria")
        end

        def test_noreste
          assert_equal "ES2", Eurostat::NUTS.get_code("Noreste")
        end

        def test_pais_vasco
          assert_equal "ES21", Eurostat::NUTS.get_code("País Vasco")
        end

        def test_araba
          assert_equal "ES211", Eurostat::NUTS.get_code("Araba")
        end

        def test_alava
          assert_equal "ES211", Eurostat::NUTS.get_code("Álava")
        end

        def test_gipuzkoa
          assert_equal "ES212", Eurostat::NUTS.get_code("Gipuzkoa")
        end

        def test_bizkaia
          assert_equal "ES213", Eurostat::NUTS.get_code("Bizkaia")
        end

        def test_comunidad_foral_de_navarra
          assert_equal "ES22", Eurostat::NUTS.get_code("Comunidad Foral de Navarra")
        end

        def test_navarra
          assert_equal "ES220", Eurostat::NUTS.get_code("Navarra")
        end

        def test_la_rioja
          assert_equal "ES230", Eurostat::NUTS.get_code("La Rioja")
        end

        def test_aragon
          assert_equal "ES24", Eurostat::NUTS.get_code("Aragón")
        end

        def test_huesca
          assert_equal "ES241", Eurostat::NUTS.get_code("Huesca")
        end

        def test_teruel
          assert_equal "ES242", Eurostat::NUTS.get_code("Teruel")
        end

        def test_zaragoza
          assert_equal "ES243", Eurostat::NUTS.get_code("Zaragoza")
        end

        def test_comunidad_de_madrid
          assert_equal "ES30", Eurostat::NUTS.get_code("Comunidad de Madrid")
        end

        def test_madrid
          assert_equal "ES300", Eurostat::NUTS.get_code("Madrid")
        end

        def test_centro
          assert_equal "ES4", Eurostat::NUTS.get_code("Centro (ES)")
        end

        def test_castilla_y_leon
          assert_equal "ES41", Eurostat::NUTS.get_code("Castilla y León")
        end

        def test_avila
          assert_equal "ES411", Eurostat::NUTS.get_code("Ávila")
        end

        def test_burgos
          assert_equal "ES412", Eurostat::NUTS.get_code("Burgos")
        end

        def test_leon
          assert_equal "ES413", Eurostat::NUTS.get_code("León")
        end

        def test_palencia
          assert_equal "ES414", Eurostat::NUTS.get_code("Palencia")
        end

        def test_salamanca
          assert_equal "ES415", Eurostat::NUTS.get_code("Salamanca")
        end

        def test_segovia
          assert_equal "ES416", Eurostat::NUTS.get_code("Segovia")
        end

        def test_soria
          assert_equal "ES417", Eurostat::NUTS.get_code("Soria")
        end

        def test_valladolid
          assert_equal "ES418", Eurostat::NUTS.get_code("Valladolid")
        end

        def test_zamora
          assert_equal "ES419", Eurostat::NUTS.get_code("Zamora")
        end

        def test_castilla_la_mancha
          assert_equal "ES42", Eurostat::NUTS.get_code("Castilla-La Mancha")
        end

        def test_albacete
          assert_equal "ES421", Eurostat::NUTS.get_code("Albacete")
        end

        def test_ciudad_real
          assert_equal "ES422", Eurostat::NUTS.get_code("Ciudad Real")
        end

        def test_cuenca
          assert_equal "ES423", Eurostat::NUTS.get_code("Cuenca")
        end

        def test_guadalajara
          assert_equal "ES424", Eurostat::NUTS.get_code("Guadalajara")
        end

        def test_toledo
          assert_equal "ES425", Eurostat::NUTS.get_code("Toledo")
        end

        def test_extremadura
          assert_equal "ES43", Eurostat::NUTS.get_code("Extremadura")
        end

        def test_badajoz
          assert_equal "ES431", Eurostat::NUTS.get_code("Badajoz")
        end

        def test_caceres
          assert_equal "ES432", Eurostat::NUTS.get_code("Cáceres")
        end

        def test_este
          assert_equal "ES5", Eurostat::NUTS.get_code("Este")
        end

        def test_cataluna
          assert_equal "ES51", Eurostat::NUTS.get_code("Cataluña")
        end

        def test_barcelona
          assert_equal "ES511", Eurostat::NUTS.get_code("Barcelona")
        end

        def test_girona
          assert_equal "ES512", Eurostat::NUTS.get_code("Girona")
        end

        def test_lleida
          assert_equal "ES513", Eurostat::NUTS.get_code("Lleida")
        end

        def test_tarragona
          assert_equal "ES514", Eurostat::NUTS.get_code("Tarragona")
        end

        def test_comunitat_valenciana
          assert_equal "ES52", Eurostat::NUTS.get_code("Comunitat Valenciana")
        end

        def test_alicante
          assert_equal "ES521", Eurostat::NUTS.get_code("Alicante")
        end

        def test_alacant
          assert_equal "ES521", Eurostat::NUTS.get_code("Alacant")
        end

        def test_castellon
          assert_equal "ES522", Eurostat::NUTS.get_code("Castellón")
        end

        def test_castello
          assert_equal "ES522", Eurostat::NUTS.get_code("Castelló")
        end

        def test_valencia_spanish
          assert_equal "ES523", Eurostat::NUTS.get_code("Valencia")
        end

        def test_valencia_valencian
          assert_equal "ES523", Eurostat::NUTS.get_code("València")
        end

        def test_illes_balears
          assert_equal "ES53", Eurostat::NUTS.get_code("Illes Balears")
        end

        def test_eivissa_y_formentera
          assert_equal "ES531", Eurostat::NUTS.get_code("Eivissa y Formentera")
        end

        def test_mallorca
          assert_equal "ES532", Eurostat::NUTS.get_code("Mallorca")
        end

        def test_menorca
          assert_equal "ES533", Eurostat::NUTS.get_code("Menorca")
        end

        def test_sur
          assert_equal "ES6", Eurostat::NUTS.get_code("Sur")
        end

        def test_andalucia
          assert_equal "ES61", Eurostat::NUTS.get_code("Andalucía")
        end

        def test_almeria
          assert_equal "ES611", Eurostat::NUTS.get_code("Almería")
        end

        def test_cadiz
          assert_equal "ES612", Eurostat::NUTS.get_code("Cádiz")
        end

        def test_cordoba
          assert_equal "ES613", Eurostat::NUTS.get_code("Córdoba")
        end

        def test_granada
          assert_equal "ES614", Eurostat::NUTS.get_code("Granada")
        end

        def test_huelva
          assert_equal "ES615", Eurostat::NUTS.get_code("Huelva")
        end

        def test_jaen
          assert_equal "ES616", Eurostat::NUTS.get_code("Jaén")
        end

        def test_malaga
          assert_equal "ES617", Eurostat::NUTS.get_code("Málaga")
        end

        def test_sevilla
          assert_equal "ES618", Eurostat::NUTS.get_code("Sevilla")
        end

        def test_region_de_murcia
          assert_equal "ES62", Eurostat::NUTS.get_code("Región de Murcia")
        end

        def test_murcia
          assert_equal "ES620", Eurostat::NUTS.get_code("Murcia")
        end

        def test_ciudad_de_ceuta
          assert_equal "ES63", Eurostat::NUTS.get_code("Ciudad de Ceuta")
        end

        def test_ceuta
          assert_equal "ES630", Eurostat::NUTS.get_code("Ceuta")
        end

        def test_ciudad_de_melilla
          assert_equal "ES64", Eurostat::NUTS.get_code("Ciudad de Melilla")
        end

        def test_melilla
          assert_equal "ES640", Eurostat::NUTS.get_code("Melilla")
        end

        def test_canarias
          assert_equal "ES70", Eurostat::NUTS.get_code("Canarias")
        end

        def test_el_hierro
          assert_equal "ES703", Eurostat::NUTS.get_code("El Hierro")
        end

        def test_fuerteventura
          assert_equal "ES704", Eurostat::NUTS.get_code("Fuerteventura")
        end

        def test_gran_canaria
          assert_equal "ES705", Eurostat::NUTS.get_code("Gran Canaria")
        end

        def test_la_gomera
          assert_equal "ES706", Eurostat::NUTS.get_code("La Gomera")
        end

        def test_la_palma
          assert_equal "ES707", Eurostat::NUTS.get_code("La Palma")
        end

        def test_lanzarote
          assert_equal "ES708", Eurostat::NUTS.get_code("Lanzarote")
        end

        def test_tenerife
          assert_equal "ES709", Eurostat::NUTS.get_code("Tenerife")
        end
      end
    end
  end
end
