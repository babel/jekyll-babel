module Jekyll
  module Converters
    class Babel < Converter
      safe true
      priority :low

      def matches(ext)
        ext.downcase == ".babel"
      end

      def output_ext(ext)
        ".js"
      end

      def convert(content)
        ::Babel::Transpiler.transform(content)['code']
      end
    end
  end
end
