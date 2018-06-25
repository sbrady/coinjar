class Price < ApplicationRecord

  class << self


    TYPES = ["BTCAUD", "ETHAUD"]

    def update_prices!

      TYPES.map{|type|
        response = HTTParty.get("https://data.exchange.coinjar.com/products/#{type}/ticker")
        last_price = JSON.parse(response.body)['last']
        price = Price.new(price: last_price, name: type)
        price.save!
        price
      }


    end
  end


end
