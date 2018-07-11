require_relative 'platform'

module Asciidoctor
  module Diagram
    module Cache
      def self.cache_dir(parent)
        cache_home = parent.attr('asciidoctor-cachedir')

        unless cache_home
          if (platform_cache_home = platform_cache_dir)
            cache_home = File.expand_path('asciidoctor', platform_cache_home)
          else
            document = parent.document
            project_cache_home = parent.attr('outdir') || (document.respond_to?(:options) && document.options[:to_dir])
            cache_home = File.expand_path('.asciidoctor', project_cache_home)
          end
        end

        parent.normalize_system_path('diagram', cache_home)
      end

      private

      def self.platform_cache_dir
        case Platform.os
        when :windows
          ENV['LOCALAPPDATA']
        when :macosx
          File.expand_path('Library/Caches', Dir.home)
        when :linux
          ENV['XDG_CACHE_HOME'] || File.expand_path('.cache', Dir.home)
        else
          nil
        end
      end
    end
  end
end