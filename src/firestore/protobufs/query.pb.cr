## Generated from google/firestore/v1/query.proto for google.firestore.v1
require "protobuf"

require "./field_behavior.pb.cr"
require "./document.pb.cr"
require "./wrappers.pb.cr"

module Google
  module Firestore
    module V1
      
      struct StructuredQuery
        include ::Protobuf::Message
        enum Direction
          DIRECTIONUNSPECIFIED = 0
          ASCENDING = 1
          DESCENDING = 2
        end
        
        struct CollectionSelector
          include ::Protobuf::Message
          
          contract_of "proto3" do
            optional :collection_id, :string, 2
            optional :all_descendants, :bool, 3
          end
        end
        
        struct Filter
          include ::Protobuf::Message
          
          contract_of "proto3" do
            optional :composite_filter, StructuredQuery::CompositeFilter, 1
            optional :field_filter, StructuredQuery::FieldFilter, 2
            optional :unary_filter, StructuredQuery::UnaryFilter, 3
          end
        end
        
        struct CompositeFilter
          include ::Protobuf::Message
          enum Operator
            OPERATORUNSPECIFIED = 0
            AND = 1
            OR = 2
          end
          
          contract_of "proto3" do
            optional :op, StructuredQuery::CompositeFilter::Operator, 1
            repeated :filters, StructuredQuery::Filter, 2
          end
        end
        
        struct FieldFilter
          include ::Protobuf::Message
          enum Operator
            OPERATORUNSPECIFIED = 0
            LESSTHAN = 1
            LESSTHANOREQUAL = 2
            GREATERTHAN = 3
            GREATERTHANOREQUAL = 4
            EQUAL = 5
            NOTEQUAL = 6
            ARRAYCONTAINS = 7
            IN = 8
            ARRAYCONTAINSANY = 9
            NOTIN = 10
          end
          
          contract_of "proto3" do
            optional :field, StructuredQuery::FieldReference, 1
            optional :op, StructuredQuery::FieldFilter::Operator, 2
            optional :value, Value, 3
          end
        end
        
        struct UnaryFilter
          include ::Protobuf::Message
          enum Operator
            OPERATORUNSPECIFIED = 0
            ISNAN = 2
            ISNULL = 3
            ISNOTNAN = 4
            ISNOTNULL = 5
          end
          
          contract_of "proto3" do
            optional :op, StructuredQuery::UnaryFilter::Operator, 1
            optional :field, StructuredQuery::FieldReference, 2
          end
        end
        
        struct Order
          include ::Protobuf::Message
          
          contract_of "proto3" do
            optional :field, StructuredQuery::FieldReference, 1
            optional :direction, StructuredQuery::Direction, 2
          end
        end
        
        struct FieldReference
          include ::Protobuf::Message
          
          contract_of "proto3" do
            optional :field_path, :string, 2
          end
        end
        
        struct Projection
          include ::Protobuf::Message
          
          contract_of "proto3" do
            repeated :fields, StructuredQuery::FieldReference, 2
          end
        end
        
        struct FindNearest
          include ::Protobuf::Message
          enum DistanceMeasure
            DISTANCEMEASUREUNSPECIFIED = 0
            EUCLIDEAN = 1
            COSINE = 2
            DOTPRODUCT = 3
          end
          
          contract_of "proto3" do
            optional :vector_field, StructuredQuery::FieldReference, 1
            optional :query_vector, Value, 2
            optional :distance_measure, StructuredQuery::FindNearest::DistanceMeasure, 3
            optional :limit, Google::Protobuf::Int32Value, 4
            optional :distance_result_field, :string, 5
            optional :distance_threshold, Google::Protobuf::DoubleValue, 6
          end
        end
        
        contract_of "proto3" do
          optional :select, StructuredQuery::Projection, 1
          repeated :from, StructuredQuery::CollectionSelector, 2
          optional :where, StructuredQuery::Filter, 3
          repeated :order_by, StructuredQuery::Order, 4
          optional :start_at, Cursor, 7
          optional :end_at, Cursor, 8
          optional :offset, :int32, 6
          optional :limit, Google::Protobuf::Int32Value, 5
          optional :find_nearest, StructuredQuery::FindNearest, 9
        end
      end
      
      struct StructuredAggregationQuery
        include ::Protobuf::Message
        
        struct Aggregation
          include ::Protobuf::Message
          
          struct Count
            include ::Protobuf::Message
            
            contract_of "proto3" do
              optional :up_to, Google::Protobuf::Int64Value, 1
            end
          end
          
          struct Sum
            include ::Protobuf::Message
            
            contract_of "proto3" do
              optional :field, StructuredQuery::FieldReference, 1
            end
          end
          
          struct Avg
            include ::Protobuf::Message
            
            contract_of "proto3" do
              optional :field, StructuredQuery::FieldReference, 1
            end
          end
          
          contract_of "proto3" do
            optional :count, StructuredAggregationQuery::Aggregation::Count, 1
            optional :sum, StructuredAggregationQuery::Aggregation::Sum, 2
            optional :avg, StructuredAggregationQuery::Aggregation::Avg, 3
            optional :alias, :string, 7
          end
        end
        
        contract_of "proto3" do
          optional :structured_query, StructuredQuery, 1
          repeated :aggregations, StructuredAggregationQuery::Aggregation, 3
        end
      end
      
      struct Cursor
        include ::Protobuf::Message
        
        contract_of "proto3" do
          repeated :values, Value, 1
          optional :before, :bool, 2
        end
      end
      end
    end
  end
