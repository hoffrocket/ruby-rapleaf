Gem::Specification.new do |s|
  s.name = "rapleaf"
  s.version = "0.1.0"
  s.author = "Glenn Rempe"
  s.email = "glenn@rempe.us"
  s.homepage = "http://github.com/grempe/rapleaf/"
  s.summary = "A Ruby gem library for accessing the rapleaf.com API"
  s.description = s.summary

  s.require_path = 'lib'

  # get this easily and accurately by running 'Dir.glob("{lib,spec}/**/*")'
  # in an IRB session.  However, GitHub won't allow that command hence
  # we spell it out.
  s.files = ["README.rdoc", "LICENSE", "CHANGELOG", "Rakefile", "lib/rapleaf", "lib/rapleaf/exceptions.rb","lib/rapleaf/rapleaf.rb", "lib/rapleaf/responses.rb", "lib/rapleaf.rb"]

  s.test_files = []

  s.has_rdoc = true
  s.rdoc_options = ["--quiet", "--title", "rapleaf documentation", "--opname", "index.html", "--line-numbers", "--main", "README.rdoc", "--inline-source"]
  s.extra_rdoc_files = ["README.rdoc", "CHANGELOG", "LICENSE"]

  s.add_dependency 'xml-simple'
  s.add_dependency 'builder'

end
