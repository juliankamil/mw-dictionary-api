# mw-dictionary-api.rb
# Julian I. Kamil / @juliankamil
# 2019/05/12

require 'rest-client'
require 'json'
require 'colorize'

module MwDictionary
    API_SERVICES = {
        elementary:   'references/sd2/json/{word}?key={api_key}',
        intermediate: 'references/sd2/json/{word}?key={api_key}'
    }

    class Api
        attr_accessor :api_key, :dictionary

        @api_domain  = 'www.dictionaryapi.com'
        @api_version = 'api/v3'

        class << self
            attr_accessor :api_domain, :api_version
        end

        def initialize(api_key, dictionary = :elementary)
            @api_key = api_key
            @dictionary = dictionary
        end

        def lookup(word)
            lookup_url = lookup_url(word)

            response = RestClient::Request.new(
                :method   => :get,
                :url      => lookup_url,
                :headers  => { :accept => :json, :content_type => :json }
                ).execute

            results = JSON.parse(response.to_str)
        end

        def lookup_url(word)
            "https://#{self.class.api_domain}/#{self.class.api_version}/#{API_SERVICES[@dictionary]}".
                gsub!('{api_key}', "#{@api_key}").
                gsub!('{word}', "#{word}")
        end
    end
end
