require 'rubygems'
require 'nokogiri'
require_relative './../lib/headings'

describe Headings do
  describe '#nested' do
    it 'should return the headings in a document nested' do
      elements = Nokogiri('<html><h2>h2</h2><h3>h3</h3></html>').css('h2, h3')
      headings = Headings.new elements
      expect(headings.nested).to eql({elements.first => [elements.last]})
    end
  end
end
