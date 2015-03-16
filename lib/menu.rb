require './lib/headings'
class Menu < Struct.new(:template)

  def html
    @html ||= Nokogiri::HTML Slim::Template.new(template).render
  end

  def headings
    @headings ||= Headings.new html.css('h1, h2, h3')
  end
end
