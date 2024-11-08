## Generated from google/protobuf/duration.proto for google.protobuf
require "protobuf"

module Google
  module Protobuf
    
    struct Duration
      include ::Protobuf::Message
      
      contract_of "proto3" do
        optional :seconds, :int64, 1
        optional :nanos, :int32, 2
      end
    end
    end
  end
