require "rubygems"
require 'json'
module Basicgeo
  module Parser
    module Json

      def parse(data)
         data = JSON.parse(data)
      end

      def navigate_to_node(data, index=[])
        index.each do |method|
          data = data[method]
        end
        data
      end

      def get_data_with_node(data, node, index)
        navigate_to_node(data[index], node)
      end

    end
  end
end

