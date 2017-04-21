require_relative '../../../core/lib/asciidoctor-diagram/extensions'

Asciidoctor::Extensions.register do
  require_relative '../../../plantuml/lib/asciidoctor-diagram/plantuml/extension'

  block Asciidoctor::Diagram::SaltBlockProcessor, :salt
  block_macro Asciidoctor::Diagram::SaltBlockMacroProcessor, :salt
end
