require 'httparty'

module BasicGeo::Consumer
  
  class Google
    include HTTParty

    def parse_address(string)
      string.gsub(" ", "+")
    end

    def get_location(address)
      self.class.get("http://maps.googleapis.com/maps/api/geocode/json?address=#{parse_address(address)}")
    end
    
    def get_address(latitude, longitude)
      self.class.get("http://maps.googleapis.com/maps/api/geocode/json?latlng=#{latitude},#{longitude}")
    end

  end

end
