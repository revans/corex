require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "corex"
    gem.summary = %Q{TODO: one-line summary of your gem}
    gem.description = %Q{TODO: longer description of your gem}
    gem.email = "robert@codewranglers.org"
    gem.homepage = "http://github.com/revans/corex"
    gem.authors = ["Robert R Evans"]
    gem.add_development_dependency "rspec", "~> 1.3.1"
    gem.add_development_dependency "yard",  "~> 0.6.1"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end


require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern    = 'spec/**/*_spec.rb'
  spec.rcov_opts  = ["--sort coverage",  
                     "--profile",
                     "--rails",
                     "--exclude /gems/,/Library/,spec"]
  spec.rcov = true
end

task :spec => :check_dependencies
task :default => :test

begin
  require 'yard'
  YARD::Rake::YardocTask.new
rescue LoadError
  task :yardoc do
    abort "YARD is not available. In order to run yardoc, you must: sudo gem install yard"
  end
end
