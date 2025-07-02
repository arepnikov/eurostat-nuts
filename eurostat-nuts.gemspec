# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name = 'ar-eurostat-nuts'
  s.version = '0.0.0'
  s.summary = 'Provides an interface to fetch NUTS numbers (Nomenclature of territorial units for statistics)'
  s.description = ''

  s.authors = ['Alexander Repnikov', 'Eloy Rojas Bartolomé']
  s.email = ''
  s.homepage = 'https://github.com/arepnikov/eurostat-nuts'
  s.licenses = ['MIT']

  s.require_paths = ['lib']
  s.files = Dir.glob('{lib}/**/*')
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.7.0'

  s.add_runtime_dependency 'i18n'
  s.add_development_dependency 'minitest'
end
