module Basicgeo
  module Mappers
    module JsonGoogle
       LOCATION     = ['geometry', 'location']
       INITIAL_NODE = ['results']
       
       def self.results(data)
         data[INITIAL_NODE]
       end

    end
  end
end
