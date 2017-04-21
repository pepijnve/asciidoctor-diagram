require_relative '../../../core/lib/asciidoctor-diagram/extensions'

Asciidoctor::Extensions.register do
  require_relative 'ditaa/extension'
  block Asciidoctor::Diagram::DitaaBlockProcessor, :ditaa
  block_macro Asciidoctor::Diagram::DitaaBlockMacroProcessor, :ditaa
end
