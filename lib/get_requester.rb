# Write your code here
require 'net/http'
require 'open-uri'
require 'json'


class GetRequester
    # URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

    def initialize(url)
        @url = url

    end
    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        arr_hash = JSON.parse(self.get_response_body)
        # arr_hash.collect do |names|
        #     names["occupation"]
        # end
    end



end

get_requester = GetRequester.new('https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json')
puts get_requester.parse_json
