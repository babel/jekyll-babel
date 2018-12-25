module Jekyll
  module Converters
    class Babel < Converter
      safe true
      priority :low

      DEFAULT_CONFIGURATION = {
        'babel_js_extensions' => 'js, es6, babel, jsx',
        'babel_js_options' => {}
      }

      def initialize(config = {})
        @config = Jekyll::Utils.deep_merge_hashes(DEFAULT_CONFIGURATION, config)
      end

      def matches(ext)
        extname_list.include? ext.downcase
      end

      def output_ext(ext)
        ".js"
      end

      def convert(content)
        ::Babel::Transpiler.transform(content)['code']
        ::Babel::Transpiler.transform(content, @config['babel_js_options'])['code']
      end

      private

      def extname_list
        @extname_list ||= @config['babel_js_extensions'].split(',').map { |e| ".#{e.downcase.strip}" }
      end
    end
  end
end
