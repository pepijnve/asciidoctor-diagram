require_relative '../../../core/lib/asciidoctor-diagram/extensions'

Asciidoctor::Extensions.register do
  require_relative 'umlet/extension'

  block Asciidoctor::Diagram::UmletBlockProcessor, :umlet
  block_macro Asciidoctor::Diagram::UmletBlockMacroProcessor, :umlet
end
