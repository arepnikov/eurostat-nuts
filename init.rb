require_relative './load_path'

require 'eurostat/nuts'

# needed for I18n.transliterate
I18n.load_path << File.expand_path("config/locales/en.yml")
