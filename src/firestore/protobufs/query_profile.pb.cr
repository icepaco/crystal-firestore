## Generated from google/firestore/v1/query_profile.proto for google.firestore.v1
require "protobuf"

require "./field_behavior.pb.cr"
require "./duration.pb.cr"
require "./struct.pb.cr"

module Google
  module Firestore
    module V1
      
      struct ExplainOptions
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :analyze, :bool, 1
        end
      end
      
      struct ExplainMetrics
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :plan_summary, PlanSummary, 1
          optional :execution_stats, ExecutionStats, 2
        end
      end
      
      struct PlanSummary
        include ::Protobuf::Message
        
        contract_of "proto3" do
          repeated :indexes_used, Google::Protobuf::Struct, 1
        end
      end
      
      struct ExecutionStats
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :results_returned, :int64, 1
          optional :execution_duration, Google::Protobuf::Duration, 3
          optional :read_operations, :int64, 4
          optional :debug_stats, Google::Protobuf::Struct, 5
        end
      end
      end
    end
  end
