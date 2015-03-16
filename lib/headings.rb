class Headings < Struct.new(:elements)
  def nested
    elements.inject({}) do |outline, el|
      if %w[h1 h2].include? el.name
        outline[el] = []
      else
        outline.values.last << el
      end
      outline
    end
  end
end
