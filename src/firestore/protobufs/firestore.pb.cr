## Generated from google/firestore/v1/firestore.proto for google.firestore.v1
require "protobuf"

require "./annotations.pb.cr"
require "./client.pb.cr"
require "./field_behavior.pb.cr"
require "./aggregation_result.pb.cr"
require "./common.pb.cr"
require "./document.pb.cr"
require "./query.pb.cr"
require "./query_profile.pb.cr"
require "./write.pb.cr"
require "./empty.pb.cr"
require "./timestamp.pb.cr"
require "./wrappers.pb.cr"
require "./status.pb.cr"

module Google
  module Firestore
    module V1
      
      struct GetDocumentRequest
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :name, :string, 1
          optional :mask, DocumentMask, 2
          optional :transaction, :bytes, 3
          optional :read_time, Google::Protobuf::Timestamp, 5
        end
      end
      
      struct ListDocumentsRequest
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :parent, :string, 1
          optional :collection_id, :string, 2
          optional :page_size, :int32, 3
          optional :page_token, :string, 4
          optional :order_by, :string, 6
          optional :mask, DocumentMask, 7
          optional :transaction, :bytes, 8
          optional :read_time, Google::Protobuf::Timestamp, 10
          optional :show_missing, :bool, 12
        end
      end
      
      struct ListDocumentsResponse
        include ::Protobuf::Message
        
        contract_of "proto3" do
          repeated :documents, Document, 1
          optional :next_page_token, :string, 2
        end
      end
      
      struct CreateDocumentRequest
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :parent, :string, 1
          optional :collection_id, :string, 2
          optional :document_id, :string, 3
          optional :document, Document, 4
          optional :mask, DocumentMask, 5
        end
      end
      
      struct UpdateDocumentRequest
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :document, Document, 1
          optional :update_mask, DocumentMask, 2
          optional :mask, DocumentMask, 3
          optional :current_document, Precondition, 4
        end
      end
      
      struct DeleteDocumentRequest
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :name, :string, 1
          optional :current_document, Precondition, 2
        end
      end
      
      struct BatchGetDocumentsRequest
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :database, :string, 1
          repeated :documents, :string, 2
          optional :mask, DocumentMask, 3
          optional :transaction, :bytes, 4
          optional :new_transaction, TransactionOptions, 5
          optional :read_time, Google::Protobuf::Timestamp, 7
        end
      end
      
      struct BatchGetDocumentsResponse
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :found, Document, 1
          optional :missing, :string, 2
          optional :transaction, :bytes, 3
          optional :read_time, Google::Protobuf::Timestamp, 4
        end
      end
      
      struct BeginTransactionRequest
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :database, :string, 1
          optional :options, TransactionOptions, 2
        end
      end
      
      struct BeginTransactionResponse
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :transaction, :bytes, 1
        end
      end
      
      struct CommitRequest
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :database, :string, 1
          repeated :writes, Write, 2
          optional :transaction, :bytes, 3
        end
      end
      
      struct CommitResponse
        include ::Protobuf::Message
        
        contract_of "proto3" do
          repeated :write_results, WriteResult, 1
          optional :commit_time, Google::Protobuf::Timestamp, 2
        end
      end
      
      struct RollbackRequest
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :database, :string, 1
          optional :transaction, :bytes, 2
        end
      end
      
      struct RunQueryRequest
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :parent, :string, 1
          optional :structured_query, StructuredQuery, 2
          optional :transaction, :bytes, 5
          optional :new_transaction, TransactionOptions, 6
          optional :read_time, Google::Protobuf::Timestamp, 7
          optional :explain_options, ExplainOptions, 10
        end
      end
      
      struct RunQueryResponse
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :transaction, :bytes, 2
          optional :document, Document, 1
          optional :read_time, Google::Protobuf::Timestamp, 3
          optional :skipped_results, :int32, 4
          optional :done, :bool, 6
          optional :explain_metrics, ExplainMetrics, 11
        end
      end
      
      struct RunAggregationQueryRequest
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :parent, :string, 1
          optional :structured_aggregation_query, StructuredAggregationQuery, 2
          optional :transaction, :bytes, 4
          optional :new_transaction, TransactionOptions, 5
          optional :read_time, Google::Protobuf::Timestamp, 6
          optional :explain_options, ExplainOptions, 8
        end
      end
      
      struct RunAggregationQueryResponse
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :result, AggregationResult, 1
          optional :transaction, :bytes, 2
          optional :read_time, Google::Protobuf::Timestamp, 3
          optional :explain_metrics, ExplainMetrics, 10
        end
      end
      
      struct PartitionQueryRequest
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :parent, :string, 1
          optional :structured_query, StructuredQuery, 2
          optional :partition_count, :int64, 3
          optional :page_token, :string, 4
          optional :page_size, :int32, 5
          optional :read_time, Google::Protobuf::Timestamp, 6
        end
      end
      
      struct PartitionQueryResponse
        include ::Protobuf::Message
        
        contract_of "proto3" do
          repeated :partitions, Cursor, 1
          optional :next_page_token, :string, 2
        end
      end
      
      struct WriteRequest
        include ::Protobuf::Message
        
        struct LabelsEntry
          include ::Protobuf::Message
          
          contract_of "proto3" do
            optional :key, :string, 1
            optional :value, :string, 2
          end
        end
        
        contract_of "proto3" do
          optional :database, :string, 1
          optional :stream_id, :string, 2
          repeated :writes, Write, 3
          optional :stream_token, :bytes, 4
          repeated :labels, WriteRequest::LabelsEntry, 5
        end
      end
      
      struct WriteResponse
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :stream_id, :string, 1
          optional :stream_token, :bytes, 2
          repeated :write_results, WriteResult, 3
          optional :commit_time, Google::Protobuf::Timestamp, 4
        end
      end
      
      struct ListenRequest
        include ::Protobuf::Message
        
        struct LabelsEntry
          include ::Protobuf::Message
          
          contract_of "proto3" do
            optional :key, :string, 1
            optional :value, :string, 2
          end
        end
        
        contract_of "proto3" do
          optional :database, :string, 1
          optional :add_target, Target, 2
          optional :remove_target, :int32, 3
          repeated :labels, ListenRequest::LabelsEntry, 4
        end
      end
      
      struct ListenResponse
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :target_change, TargetChange, 2
          optional :document_change, DocumentChange, 3
          optional :document_delete, DocumentDelete, 4
          optional :document_remove, DocumentRemove, 6
          optional :filter, ExistenceFilter, 5
        end
      end
      
      struct Target
        include ::Protobuf::Message
        
        struct DocumentsTarget
          include ::Protobuf::Message
          
          contract_of "proto3" do
            repeated :documents, :string, 2
          end
        end
        
        struct QueryTarget
          include ::Protobuf::Message
          
          contract_of "proto3" do
            optional :parent, :string, 1
            optional :structured_query, StructuredQuery, 2
          end
        end
        
        contract_of "proto3" do
          optional :query, Target::QueryTarget, 2
          optional :documents, Target::DocumentsTarget, 3
          optional :resume_token, :bytes, 4
          optional :read_time, Google::Protobuf::Timestamp, 11
          optional :target_id, :int32, 5
          optional :once, :bool, 6
          optional :expected_count, Google::Protobuf::Int32Value, 12
        end
      end
      
      struct TargetChange
        include ::Protobuf::Message
        enum TargetChangeType
          NOCHANGE = 0
          ADD = 1
          REMOVE = 2
          CURRENT = 3
          RESET = 4
        end
        
        contract_of "proto3" do
          optional :target_change_type, TargetChange::TargetChangeType, 1
          repeated :target_ids, :int32, 2
          optional :cause, Google::Rpc::Status, 3
          optional :resume_token, :bytes, 4
          optional :read_time, Google::Protobuf::Timestamp, 6
        end
      end
      
      struct ListCollectionIdsRequest
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :parent, :string, 1
          optional :page_size, :int32, 2
          optional :page_token, :string, 3
          optional :read_time, Google::Protobuf::Timestamp, 4
        end
      end
      
      struct ListCollectionIdsResponse
        include ::Protobuf::Message
        
        contract_of "proto3" do
          repeated :collection_ids, :string, 1
          optional :next_page_token, :string, 2
        end
      end
      
      struct BatchWriteRequest
        include ::Protobuf::Message
        
        struct LabelsEntry
          include ::Protobuf::Message
          
          contract_of "proto3" do
            optional :key, :string, 1
            optional :value, :string, 2
          end
        end
        
        contract_of "proto3" do
          optional :database, :string, 1
          repeated :writes, Write, 2
          repeated :labels, BatchWriteRequest::LabelsEntry, 3
        end
      end
      
      struct BatchWriteResponse
        include ::Protobuf::Message
        
        contract_of "proto3" do
          repeated :write_results, WriteResult, 1
          repeated :status, Google::Rpc::Status, 2
        end
      end
      end
    end
  end
