# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "icunicode"
  s.version = "0.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Justin Balthrop"]
  s.date = "2013-10-25"
  s.description = "ICU Unicode Transliteration and Collation in Ruby."
  s.email = "code@justinbalthrop.com"
  s.extensions = ["ext/extconf.rb"]
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = `git ls-files`.split($/)
  s.executables = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  s.homepage = "http://github.com/ninjudd/icunicode"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "Unicode Transliteration and Collation in Ruby."

  s.add_development_dependency 'bundler', '~> 1.3'
  s.add_development_dependency 'mocha'
  s.add_development_dependency 'shoulda'
  s.add_development_dependency 'rake'
end
