# -*- encoding: utf-8 -*-
# stub: flowdock 0.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "flowdock".freeze
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Antti Pitk\u00E4nen".freeze]
  s.date = "2014-04-10"
  s.email = "team@flowdock.com".freeze
  s.extra_rdoc_files = ["LICENSE".freeze, "README.md".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze]
  s.homepage = "http://github.com/flowdock/flowdock-api".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Ruby Gem for using Flowdock's API".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>.freeze, ["~> 0.7"])
      s.add_runtime_dependency(%q<multi_json>.freeze, [">= 0"])
      s.add_development_dependency(%q<rdoc>.freeze, [">= 2.4.2"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 2.6"])
      s.add_development_dependency(%q<webmock>.freeze, [">= 0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>.freeze, [">= 2.0.1"])
      s.add_development_dependency(%q<jruby-openssl>.freeze, [">= 0"])
    else
      s.add_dependency(%q<httparty>.freeze, ["~> 0.7"])
      s.add_dependency(%q<multi_json>.freeze, [">= 0"])
      s.add_dependency(%q<rdoc>.freeze, [">= 2.4.2"])
      s.add_dependency(%q<rspec>.freeze, ["~> 2.6"])
      s.add_dependency(%q<webmock>.freeze, [">= 0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.0"])
      s.add_dependency(%q<jeweler>.freeze, [">= 2.0.1"])
      s.add_dependency(%q<jruby-openssl>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<httparty>.freeze, ["~> 0.7"])
    s.add_dependency(%q<multi_json>.freeze, [">= 0"])
    s.add_dependency(%q<rdoc>.freeze, [">= 2.4.2"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.6"])
    s.add_dependency(%q<webmock>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.0"])
    s.add_dependency(%q<jeweler>.freeze, [">= 2.0.1"])
    s.add_dependency(%q<jruby-openssl>.freeze, [">= 0"])
  end
end
