Gem::Specification.new do |s|
  s.name = %q{ruby-rapleaf}
  s.version = "0.1.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Glenn Rempe"]
  s.date = %q{2008-08-27}
  s.description = %q{Rapleaf's goal is to make the internet safe and transparent, by allowing you to evaluate your web footprint across a variety of user-generated sites. See http://www.rapleaf.com for more information.}
  s.email = ["glenn@rempe.us"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "Rakefile", "examples/person.rb", "lib/ruby-rapleaf.rb", "lib/rapleaf/exceptions.rb", "lib/rapleaf/rapleaf.rb", "lib/rapleaf/responses.rb", "ruby-rapleaf.gemspec"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/grempe/ruby-rapleaf}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{ruby-rapleaf}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{Rapleaf's goal is to make the internet safe and transparent, by allowing you to evaluate your web footprint across a variety of user-generated sites}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
      s.add_runtime_dependency(%q<xml-simple>, [">= 1.0.11"])
      s.add_runtime_dependency(%q<builder>, [">= 2.1.2"])
      s.add_development_dependency(%q<hoe>, [">= 1.7.0"])
    else
      s.add_dependency(%q<xml-simple>, [">= 1.0.11"])
      s.add_dependency(%q<builder>, [">= 2.1.2"])
      s.add_dependency(%q<hoe>, [">= 1.7.0"])
    end
  else
    s.add_dependency(%q<xml-simple>, [">= 1.0.11"])
    s.add_dependency(%q<builder>, [">= 2.1.2"])
    s.add_dependency(%q<hoe>, [">= 1.7.0"])
  end
end
