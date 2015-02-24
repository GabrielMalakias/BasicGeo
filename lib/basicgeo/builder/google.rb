require 'basicgeo/parser/json'
require 'basicgeo/consumer/google'
require 'basicgeo/mapper/json_google'

module Basicgeo
  module Builder
    class Google
      include Basicgeo::Parser::Json
      attr_accessor :address

      def initialize(address)
        self.address = address
      end

      def results(node=nil, index=0)
        node ||= Basicgeo::Mapper::JsonGoogle::LOCATION
        get_data_with_node(Basicgeo::Mapper::JsonGoogle.results(parse(get_google_data.body)), node, index)
      end

      def get_google_data
        Basicgeo::Consumer::Google.new.get_location(address)
      end

    end
  end
end
