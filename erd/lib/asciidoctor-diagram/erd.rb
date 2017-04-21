require_relative '../../../core/lib/asciidoctor-diagram/extensions'

Asciidoctor::Extensions.register do
  require_relative 'erd/extension'
  block Asciidoctor::Diagram::ErdBlockProcessor, :erd
  block_macro Asciidoctor::Diagram::ErdBlockMacroProcessor, :erd
end
