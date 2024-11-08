## Generated from google/protobuf/any.proto for google.protobuf
require "protobuf"

module Google
  module Protobuf
    
    struct Any
      include ::Protobuf::Message
      
      contract_of "proto3" do
        optional :type_url, :string, 1
        optional :value, :bytes, 2
      end
    end
    end
  end
