require 'basicgeo/parser/json'
require 'basicgeo/consumer/google'
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
        get_record_with_node(Basicgeo::Mapper::JsonGoogle.results(get_google_data), node, index)
      end

      def get_google_data
        Basic::Consumer::Google.new.get_location(address)
      end

    end
  end
end
