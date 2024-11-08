## Generated from google/rpc/status.proto for google.rpc
require "protobuf"

require "./any.pb.cr"

module Google
  module Rpc
    
    struct Status
      include ::Protobuf::Message
      
      contract_of "proto3" do
        optional :code, :int32, 1
        optional :message, :string, 2
        repeated :details, Google::Protobuf::Any, 3
      end
    end
    end
  end
