require "rubygems"
require 'json'

class JsonParser

  def parse_data
     data = JSON.parse(data)
  end

  def navigate_to_node(data, index=[])
    index.each do |method|
      data = data[method]
    end
    data
  end

end
