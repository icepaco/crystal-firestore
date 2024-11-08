## Generated from google/firestore/v1/document.proto for google.firestore.v1
require "protobuf"

require "./field_behavior.pb.cr"
require "./struct.pb.cr"
require "./timestamp.pb.cr"
require "./latlng.pb.cr"

module Google
  module Firestore
    module V1
      
      struct Document
        include ::Protobuf::Message
        
        struct FieldsEntry
          include ::Protobuf::Message
          
          contract_of "proto3" do
            optional :key, :string, 1
            optional :value, Value, 2
          end
        end
        
        contract_of "proto3" do
          optional :name, :string, 1
          repeated :fields, Document::FieldsEntry, 2
          optional :create_time, Google::Protobuf::Timestamp, 3
          optional :update_time, Google::Protobuf::Timestamp, 4
        end
      end
      
      struct Value
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :null_value, Google::Protobuf::NullValue, 11
          optional :boolean_value, :bool, 1
          optional :integer_value, :int64, 2
          optional :double_value, :double, 3
          optional :timestamp_value, Google::Protobuf::Timestamp, 10
          optional :string_value, :string, 17
          optional :bytes_value, :bytes, 18
          optional :reference_value, :string, 5
          optional :geo_point_value, Google::Type::LatLng, 8
          optional :array_value, ArrayValue, 9
          optional :map_value, MapValue, 6
        end
      end
      
      struct ArrayValue
        include ::Protobuf::Message
        
        contract_of "proto3" do
          repeated :values, Value, 1
        end
      end
      
      struct MapValue
        include ::Protobuf::Message
        
        struct FieldsEntry
          include ::Protobuf::Message
          
          contract_of "proto3" do
            optional :key, :string, 1
            optional :value, Value, 2
          end
        end
        
        contract_of "proto3" do
          repeated :fields, MapValue::FieldsEntry, 1
        end
      end
      end
    end
  end
