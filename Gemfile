if ENV['APPVEYOR']
  # Use non-encrypted
  source 'http://rubygems.org'
else
  source 'https://rubygems.org'
end

# Specify your gem's dependencies in ditaa.gemspec
Dir['**/*.gemspec'].each do |gem|
  gemspec :path => File.dirname(gem)
end