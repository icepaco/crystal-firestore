## Generated from google/type/latlng.proto for google.type
require "protobuf"

module Google
  module Type
    
    struct LatLng
      include ::Protobuf::Message
      
      contract_of "proto3" do
        optional :latitude, :double, 1
        optional :longitude, :double, 2
      end
    end
    end
  end
