# -*- encoding: utf-8 -*-
# stub: rufo 0.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rufo".freeze
  s.version = "0.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ary Borenszweig".freeze]
  s.bindir = "exe".freeze
  s.date = "2019-04-28"
  s.description = "Fast and unobtrusive Ruby code formatter".freeze
  s.email = ["asterite@gmail.com".freeze]
  s.executables = ["rufo".freeze]
  s.files = ["exe/rufo".freeze]
  s.homepage = "https://github.com/ruby-formatter/rufo".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4.5".freeze)
  s.rubygems_version = "2.7.6.2".freeze
  s.summary = "Ruby code formatter".freeze

  s.installed_by_version = "2.7.6.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, [">= 1.15"])
      s.add_development_dependency(%q<byebug>.freeze, ["~> 10.0.2"])
      s.add_development_dependency(%q<guard-rspec>.freeze, ["~> 4.0"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.4.1"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.63.1"])
    else
      s.add_dependency(%q<bundler>.freeze, [">= 1.15"])
      s.add_dependency(%q<byebug>.freeze, ["~> 10.0.2"])
      s.add_dependency(%q<guard-rspec>.freeze, ["~> 4.0"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.4.1"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.63.1"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, [">= 1.15"])
    s.add_dependency(%q<byebug>.freeze, ["~> 10.0.2"])
    s.add_dependency(%q<guard-rspec>.freeze, ["~> 4.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.4.1"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.63.1"])
  end
end
