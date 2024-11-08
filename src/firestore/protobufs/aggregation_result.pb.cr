## Generated from google/firestore/v1/aggregation_result.proto for google.firestore.v1
require "protobuf"

require "./document.pb.cr"

module Google
  module Firestore
    module V1
      
      struct AggregationResult
        include ::Protobuf::Message
        
        struct AggregateFieldsEntry
          include ::Protobuf::Message
          
          contract_of "proto3" do
            optional :key, :string, 1
            optional :value, Value, 2
          end
        end
        
        contract_of "proto3" do
          repeated :aggregate_fields, AggregationResult::AggregateFieldsEntry, 2
        end
      end
      end
    end
  end
