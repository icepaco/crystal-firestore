## Generated from google/firestore/v1/bloom_filter.proto for google.firestore.v1
require "protobuf"

module Google
  module Firestore
    module V1
      
      struct BitSequence
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :bitmap, :bytes, 1
          optional :padding, :int32, 2
        end
      end
      
      struct BloomFilter
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :bits, BitSequence, 1
          optional :hash_count, :int32, 2
        end
      end
      end
    end
  end
