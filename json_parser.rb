require 'json'
module BasicGeo::Parser

  class Json

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

end

