# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name = 'ar-eurostat-nuts'
  s.version = '0.1.0.alpha'
  s.summary = 'Provides an interface to fetch NUTS numbers (Nomenclature of territorial units for statistics)'
  s.description = 'Provides an interface to fetch NUTS numbers (Nomenclature of territorial units for statistics)'

  s.authors = ['Alexander Repnikov', 'Eloy Rojas Bartolomé']
  s.email = 'aleksander.repnikov@gmail.com'
  s.homepage = 'https://github.com/arepnikov/eurostat-nuts'
  s.licenses = ['MIT']

  s.require_paths = ['lib']
  s.files = Dir.glob('{lib}/**/*')
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.7.0'

  s.add_runtime_dependency 'i18n'
  s.add_development_dependency 'minitest'
end
