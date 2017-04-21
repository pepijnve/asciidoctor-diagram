require 'rubygems/package_task'
require 'rspec/core/rake_task'

test = RSpec::Core::RakeTask.new(:test)

if ENV['APPVEYOR']
  # Exclude diagram types that require external libraries that are difficult to build on Windows.
  test.exclude_pattern = '**/{blockdiag,shaape}_spec.rb'
end

task :default => :test

desc 'Build gem into the pkg directory'
task :build do
  FileUtils.rm_rf('pkg')
  Dir['**/*.gemspec'].each do |gemspec|
    cd(File.dirname(gemspec)) do
      system "gem build #{File.basename(gemspec)}"
    end
  end
  FileUtils.mkdir_p('pkg')
  FileUtils.mv(Dir['**/*.gem'], 'pkg')
end

