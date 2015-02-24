require 'basicgeo/consumer/google'
require 'basicgeo/parser/json'
require 'basicgeo/extend_string'

module Basicgeo
  
  def self.get_lat_long(address)
    I18n.locale = :en
    parser = Basicgeo::Parser::Json.new
    parser.navigate_to_node(parse_data(get_google_data(address)), ['results', 0, 'geometry', 'location'])
  end

  def self.get_google_data(address)
    Basicgeo::Consumer::Google.new.get_location(address)
  end

end
