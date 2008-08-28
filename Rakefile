# -*- ruby -*-

require 'rubygems'
require 'hoe'
require './lib/ruby-rapleaf.rb'

Hoe.new('ruby-rapleaf', Rapleaf::VERSION) do |p|
  p.rubyforge_name = 'ruby-rapleaf' # if different than lowercase project name
  p.developer('Glenn Rempe', 'glenn@rempe.us')
  p.extra_deps = [['xml-simple', '>= 1.0.11'], ['builder', '>= 2.1.2']]
end

namespace :manifest do
  desc 'Recreate Manifest.txt to include ALL files'
  task :refresh do
    `rake check_manifest | patch -p0 > Manifest.txt`
  end
end

namespace :gemspec do
  desc 'Refresh the gemspec file'
  task :refresh do
    `rake debug_gem > ruby-rapleaf.gemspec`
    # remove the first line from the file which is an artifact of the gemspec generation
    `perl -pi -e '$_ = "" if ($. == 1);' ruby-rapleaf.gemspec`
  end
end

