require 'faraday'
require 'crack'
require 'hashie'

module Reevoo
  class Client
    def initialize(trkref, password)
      @connection = Faraday::Connection.new "http://#{trkref}:#{password}@api.reevoo.com/#{trkref}/"
    end

    def products
      resp = @connection.get 'product_review_summary.xml'
      hash = Crack::XML.parse(resp.body)
      mash = Hashie::Mash.new(hash)
      products =  mash.first[1].first[1]
    end
  end
end