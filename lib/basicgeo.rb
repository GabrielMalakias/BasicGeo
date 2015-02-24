require 'basicgeo/consumer/google'
require 'basicgeo/parser/json'
require 'basicgeo/extend_string'

module Basicgeo

  def self.get_lat_long(address)
    parser = Basicgeo::Parser::Json.new
    parser.navigate_to_node(parser.parse_data(get_google_data(address).body), Basicgeo::GoogleJsonMapping::LOCATION)
  end

  def self.get_google_data(address)
    Basicgeo::Consumer::Google.new.get_location(address)
  end

end
