# coding: utf-8
lib = File.expand_path('../core/lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'asciidoctor-diagram/version'

Gem::Specification.new do |s|
  s.name          = "asciidoctor-diagram"
  s.version       = ::Asciidoctor::Diagram::VERSION
  s.authors       = ["Pepijn Van Eeckhoudt"]
  s.email         = ["pepijn@vaneeckhoudt.net"]
  s.description   = %q{Asciidoctor diagramming extension}
  s.summary       = %q{An extension for asciidoctor that adds support for UML diagram generation using PlantUML}
  s.platform      = $platform
  s.homepage      = "https://github.com/asciidoctor/asciidoctor-diagram"
  s.license       = "MIT"

  s.add_runtime_dependency "asciidoctor-diagram-core", ::Asciidoctor::Diagram::VERSION
  s.add_runtime_dependency "asciidoctor-diagram-blockdiag", ::Asciidoctor::Diagram::VERSION
  s.add_runtime_dependency "asciidoctor-diagram-ditaa", ::Asciidoctor::Diagram::VERSION
  s.add_runtime_dependency "asciidoctor-diagram-erd", ::Asciidoctor::Diagram::VERSION
  s.add_runtime_dependency "asciidoctor-diagram-graphviz", ::Asciidoctor::Diagram::VERSION
  s.add_runtime_dependency "asciidoctor-diagram-meme", ::Asciidoctor::Diagram::VERSION
  s.add_runtime_dependency "asciidoctor-diagram-mermaid", ::Asciidoctor::Diagram::VERSION
  s.add_runtime_dependency "asciidoctor-diagram-plantuml", ::Asciidoctor::Diagram::VERSION
  s.add_runtime_dependency "asciidoctor-diagram-shaape", ::Asciidoctor::Diagram::VERSION
  s.add_runtime_dependency "asciidoctor-diagram-umlet", ::Asciidoctor::Diagram::VERSION
  s.add_runtime_dependency "asciidoctor-diagram-wavedrom", ::Asciidoctor::Diagram::VERSION

  s.add_development_dependency "bundler", "~> 1.3"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
end
