require_relative '../../../core/lib/asciidoctor-diagram/extensions'

Asciidoctor::Extensions.register do
  require_relative 'meme/extension'

  block_macro Asciidoctor::Diagram::MemeBlockMacroProcessor, :meme
end
