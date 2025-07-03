# frozen_string_literal: true
#
module Eurostat
  module NUTS
    class Registry
      module Build
        SKIP_FOR_LABELS = [
          "Extra-Regio NUTS 1",
          "Extra-Regio NUTS 2",
          "Extra-Regio NUTS 3"
        ]

        def build(nuts_entries)
          code_registry = index_by_code(nuts_entries)
          label_registry = index_by_labels(nuts_entries)

          Registry.new(code_registry, label_registry)
        end

        private

        def index_by_code(nuts_entries)
          nuts_entries.to_h { |nuts_entry| [nuts_entry.code, nuts_entry] }
        end

        def index_by_labels(nuts_entries)
          nuts_entries
            .map { |entry| [entry.labels, entry] }
            .flat_map { |labels, entry| labels.product([entry]) }
            .to_h { |label, entry| [normalize(label), entry] }
            .tap { |entry_by_label| remove_extra_regio_entries(entry_by_label) }
        end

        def normalize(label)
          NormalizeLabel.(label)
        end

        # Entries with labels 'Extra-Regio NUTS 1', 'Extra-Regio NUTS 2', 'Extra-Regio NUTS 3'
        # exist in each country. This abiguity makes it not deterministic to fetch entry by
        # one of this labels.
        def remove_extra_regio_entries(entry_by_label)
          SKIP_FOR_LABELS
            .map { |avoid_label| normalize(avoid_label) }
            .each { |normalized_avoid_label| entry_by_label.delete(normalized_avoid_label) }
        end
      end
    end
  end
end
