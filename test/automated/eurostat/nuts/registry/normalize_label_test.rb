require_relative '../../../automated_init'

module Eurostat
  module NUTS
    class Registry
      class NormalizeLabelTest < Minitest::Test
        def test_region_de_bruxelles_capitale
          normalized_label = NormalizeLabel.("Région de Bruxelles-Capitale")
          assert_equal "region_de_bruxelles_capitale", normalized_label
        end

        def test_prov_oost_vlaanderen
          normalized_label = NormalizeLabel.("Prov. Oost-Vlaanderen")
          assert_equal "prov_oost_vlaanderen", normalized_label
        end

        def test_severna_i_yugoiztochna_bulgaria
          skip # I18n doesn't support Cyrillic by default
          normalized_label = NormalizeLabel.("Северна и Югоизточна България")
          assert_equal "severna_i_yugoiztochna_bulgaria", normalized_label
        end

        def test_stredocesky_kraj
          normalized_label = NormalizeLabel.("Středočeský kraj")
          assert_equal "stredocesky_kraj", normalized_label
        end

        def test_kobenhavns_omegn
          normalized_label = NormalizeLabel.("Københavns omegn")
          assert_equal "kobenhavns_omegn", normalized_label
        end

        def test_weiden_i_d_opf_kreisfreie_stadt
          normalized_label = NormalizeLabel.("Weiden i. d. Opf, Kreisfreie Stadt")
          assert_equal "weiden_i_d_opf_kreisfreie_stadt", normalized_label
        end

        def test_pohja_eesti
          normalized_label = NormalizeLabel.("Põhja-Eesti")
          assert_equal "pohja_eesti", normalized_label
        end

        def test_dublin
          normalized_label = NormalizeLabel.("Dublin")
          assert_equal "dublin", normalized_label
        end

        def test_dytikos_tomeas_athinon
          skip # I18n doesn't support Greek by default
          normalized_label = NormalizeLabel.("Δυτικός Τομέας Αθηνών")
          assert_equal "dytikos_tomeas_athinon", normalized_label
        end

        def test_castilla_y_leon
          normalized_label = NormalizeLabel.("Castilla y León")
          assert_equal "castilla_y_leon", normalized_label
        end

        def test_cote_d_or
          normalized_label = NormalizeLabel.("Côte-d’Or")
          assert_equal "cote_d_or", normalized_label
        end

        def test_zagrebacka_zupanija
          normalized_label = NormalizeLabel.("Zagrebačka županija")
          assert_equal "zagrebacka_zupanija", normalized_label
        end

        def test_lombardia
          normalized_label = NormalizeLabel.("Lombardia")
          assert_equal "lombardia", normalized_label
        end

        def test_kypros
          skip # I18n doesn't support Greek by default
          normalized_label = NormalizeLabel.("Κύπρος")
          assert_equal "kypros", normalized_label
        end

        def test_riga
          normalized_label = NormalizeLabel.("Rīga")
          assert_equal "riga", normalized_label
        end

        def test_vilniaus_apskritis
          normalized_label = NormalizeLabel.("Vilniaus apskritis")
          assert_equal "vilniaus_apskritis", normalized_label
        end

        def test_luxembourg
          normalized_label = NormalizeLabel.("Luxembourg")
          assert_equal "luxembourg", normalized_label
        end

        def test_kozep_magyarorszag
          normalized_label = NormalizeLabel.("Közép-Magyarország")
          assert_equal "kozep_magyarorszag", normalized_label
        end

        def test_ghawdex_u_kemmuna
          normalized_label = NormalizeLabel.("Għawdex u Kemmuna")
          assert_equal "ghawdex_u_kemmuna", normalized_label
        end

        def test_noord_holland
          normalized_label = NormalizeLabel.("Noord-Holland")
          assert_equal "noord_holland", normalized_label
        end

        def test_sudteil
          normalized_label = NormalizeLabel.("Südteil")
          assert_equal "sudteil", normalized_label
        end

        def test_makroregion_polnocno_zachodni
          normalized_label = NormalizeLabel.("Makroregion północno-zachodni")
          assert_equal "makroregion_polnocno_zachodni", normalized_label
        end

        def test_regiao_autonoma_dos_acores
          normalized_label = NormalizeLabel.("Região Autónoma dos Açores")
          assert_equal "regiao_autonoma_dos_acores", normalized_label
        end

        def test_bucuresti
          normalized_label = NormalizeLabel.("Bucureşti")
          assert_equal "bucuresti", normalized_label
        end

        def test_obalno_kraska
          normalized_label = NormalizeLabel.("Obalno-kraška")
          assert_equal "obalno_kraska", normalized_label
        end

        def test_bratislavsky_kraj
          normalized_label = NormalizeLabel.("Bratislavský kraj")
          assert_equal "bratislavsky_kraj", normalized_label
        end

        def test_etela_suomi
          normalized_label = NormalizeLabel.("Etelä-Suomi")
          assert_equal "etela_suomi", normalized_label
        end

        def test_stockholms_lan
          normalized_label = NormalizeLabel.("Stockholms län")
          assert_equal "stockholms_lan", normalized_label
        end
      end
    end
  end
end
