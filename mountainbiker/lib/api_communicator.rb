require 'rest-client'
require 'json'

class APICall

  def self.get_data
    url = 'https://www.mtbproject.com/data/get-trails?lat=41.881832&lon=-87.623177&maxDistance=200&maxResults=500&key=200498394-799a77fec9da16b37ec63ca070af42ad'
    resp_string = RestClient.get(url)
    # parseData = JSON.parse(resp_string)
  end

end

# puts APICall.get_data
