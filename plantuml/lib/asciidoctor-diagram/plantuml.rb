require_relative '../../../core/lib/asciidoctor-diagram/extensions'

Asciidoctor::Extensions.register do
  require_relative 'plantuml/extension'

  block Asciidoctor::Diagram::PlantUmlBlockProcessor, :plantuml
  block_macro Asciidoctor::Diagram::PlantUmlBlockMacroProcessor, :plantuml
end
