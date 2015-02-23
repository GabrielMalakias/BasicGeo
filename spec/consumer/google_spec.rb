require 'basicgeo'
require 'spec_helper'

describe Basicgeo::Consumer::Google do
  it "change spaces of strings to + " do
    expect(Basicgeo::Consumer::Google.new.parse_address("Av Imperador 341")).to eq("Av+Imperador+341")
  end

  it "get status of search from existent address" do 
    expect(JSON.parse(Basicgeo::Consumer::Google.new.get_location("Av Coronel Alves Rocha e Filho").body)["status"]).to eq("OK")
  end

  it "get status of search from inexistent address" do
     expect(JSON.parse(Basicgeo::Consumer::Google.new.get_location("sdjafjdvfbgba bbabvbabffa").body)["status"]).to eq("ZERO_RESULTS")
  end

 it "get address of latitude and longitude" do
    data = JSON.parse(Basicgeo::Consumer::Google.new.get_address(-23.5205452,-46.4665111).body)
    expect(Basicgeo::Parser::Json.new.navigate_to_node(data, ['results',0,'formatted_address'])).to eq('Avenida Coronel Alves e Rocha Filho, 329-347 - Parque Guarani, São Paulo - SP, Brazil')
 end

 it 'get status of inexistent latitude and longitude' do
   expect(JSON.parse(Basicgeo::Consumer::Google.new.get_address(5444644, 464464644).body)["status"]).to eq("ZERO_RESULTS")
 end
end
