# coding: utf-8
require_relative '../core/lib/asciidoctor-diagram/version'

Gem::Specification.new do |s|
  s.name          = "asciidoctor-diagram-erd"
  s.version       = ::Asciidoctor::Diagram::VERSION
  s.authors       = ["Pepijn Van Eeckhoudt"]
  s.email         = ["pepijn@vaneeckhoudt.net"]
  s.description   = %q{Asciidoctor diagramming extension}
  s.summary       = %q{An extension for asciidoctor that adds support for Erd diagrams}
  s.platform      = $platform
  s.homepage      = "https://github.com/asciidoctor/asciidoctor-diagram"
  s.license       = "MIT"

  s.files         = Dir['lib/**/*']

  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_runtime_dependency "asciidoctor-diagram-core", ::Asciidoctor::Diagram::VERSION
end
