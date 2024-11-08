## Generated from google/firestore/v1/common.proto for google.firestore.v1
require "protobuf"

require "./timestamp.pb.cr"

module Google
  module Firestore
    module V1
      
      struct DocumentMask
        include ::Protobuf::Message
        
        contract_of "proto3" do
          repeated :field_paths, :string, 1
        end
      end
      
      struct Precondition
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :exists, :bool, 1
          optional :update_time, Google::Protobuf::Timestamp, 2
        end
      end
      
      struct TransactionOptions
        include ::Protobuf::Message
        
        struct ReadWrite
          include ::Protobuf::Message
          
          contract_of "proto3" do
            optional :retry_transaction, :bytes, 1
          end
        end
        
        struct ReadOnly
          include ::Protobuf::Message
          
          contract_of "proto3" do
            optional :read_time, Google::Protobuf::Timestamp, 2
          end
        end
        
        contract_of "proto3" do
          optional :read_only, TransactionOptions::ReadOnly, 2
          optional :read_write, TransactionOptions::ReadWrite, 3
        end
      end
      end
    end
  end
