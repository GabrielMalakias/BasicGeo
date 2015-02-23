require "rubygems"
require 'json'
module Basicgeo
  module Parser
    class Json

      def parse_data(data)
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
end

