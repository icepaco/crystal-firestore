## Generated from google/firestore/v1/write.proto for google.firestore.v1
require "protobuf"

require "./bloom_filter.pb.cr"
require "./common.pb.cr"
require "./document.pb.cr"
require "./timestamp.pb.cr"

module Google
  module Firestore
    module V1
      
      struct Write
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :update, Document, 1
          optional :delete, :string, 2
          optional :transform, DocumentTransform, 6
          optional :update_mask, DocumentMask, 3
          repeated :update_transforms, DocumentTransform::FieldTransform, 7
          optional :current_document, Precondition, 4
        end
      end
      
      struct DocumentTransform
        include ::Protobuf::Message
        
        struct FieldTransform
          include ::Protobuf::Message
          enum ServerValue
            SERVERVALUEUNSPECIFIED = 0
            REQUESTTIME = 1
          end
          
          contract_of "proto3" do
            optional :field_path, :string, 1
            optional :set_to_server_value, DocumentTransform::FieldTransform::ServerValue, 2
            optional :increment, Value, 3
            optional :maximum, Value, 4
            optional :minimum, Value, 5
            optional :append_missing_elements, ArrayValue, 6
            optional :remove_all_from_array, ArrayValue, 7
          end
        end
        
        contract_of "proto3" do
          optional :document, :string, 1
          repeated :field_transforms, DocumentTransform::FieldTransform, 2
        end
      end
      
      struct WriteResult
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :update_time, Google::Protobuf::Timestamp, 1
          repeated :transform_results, Value, 2
        end
      end
      
      struct DocumentChange
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :document, Document, 1
          repeated :target_ids, :int32, 5
          repeated :removed_target_ids, :int32, 6
        end
      end
      
      struct DocumentDelete
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :document, :string, 1
          repeated :removed_target_ids, :int32, 6
          optional :read_time, Google::Protobuf::Timestamp, 4
        end
      end
      
      struct DocumentRemove
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :document, :string, 1
          repeated :removed_target_ids, :int32, 2
          optional :read_time, Google::Protobuf::Timestamp, 4
        end
      end
      
      struct ExistenceFilter
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :target_id, :int32, 1
          optional :count, :int32, 2
          optional :unchanged_names, BloomFilter, 3
        end
      end
      end
    end
  end
