module Shipstation
    class Shipment < ApiResource
        extend Shipstation::APIOperations::List
        extend Shipstation::APIOperations::Retrieve

        class << self
            def get_rates params={}
                response = Shipstation.request(:post, "shipments/getrates", params)

                return response
            end
        end
    end
end