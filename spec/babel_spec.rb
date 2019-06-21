require 'spec_helper'

describe(Jekyll::Converters::Babel) do
  let(:configuration) { Jekyll::Configuration::DEFAULTS }
  let(:custom_configuration) { Jekyll::Utils.deep_merge_hashes(Jekyll::Configuration::DEFAULTS, {
    'babel_js_options' => {
      'comments' => false
    }
  }) }
  let(:converter) do
    Jekyll::Converters::Babel.new(configuration)
  end
  let(:converter_custom_options) {
    Jekyll::Converters::Babel.new(custom_configuration)
  }
  let(:babel_content) do
    <<-BABEL
/* Functions: */
let square = x => x * x;
/* Arrays: */
let list = [1, 2, 3, 4, 5];
/* Objects: */
let math = {
  root: Math.sqrt,
  square,
  cube: x => x * square(x)
};
BABEL
  end
  let(:js_content) do
    <<-JS
/* Functions: */
"use strict";

var square = function square(x) {
  return x * x;
};
/* Arrays: */
var list = [1, 2, 3, 4, 5];
/* Objects: */
var math = {
  root: Math.sqrt,
  square: square,
  cube: function cube(x) {
    return x * square(x);
  }
};
JS
  end
  let(:js_custom_content) do
    <<-JS
"use strict";

var square = function square(x) {
  return x * x;
};

var list = [1, 2, 3, 4, 5];

var math = {
  root: Math.sqrt,
  square: square,
  cube: function cube(x) {
    return x * square(x);
  }
};
JS
  end

  context "matching file extensions" do
    it "matches .babel files" do
      expect(converter.matches(".babel")).to be(true)
    end
  end

  context "determining the output file extension" do
    it "always outputs the .js file extension" do
      expect(converter.output_ext(".always-js-dont-matter")).to eql(".js")
    end
  end

  context "converting Babel" do
    it "produces JS" do
      expect(converter.convert(babel_content)).to eql(js_content.strip)
    end
  end

  context "accepts custom options" do
    it "produces JS" do
      expect(converter_custom_options.convert(babel_content)).to eql(js_custom_content.chomp)
    end
  end
end
