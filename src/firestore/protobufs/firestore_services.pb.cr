## Generated from google/firestore/v1/firestore.proto for google.firestore.v1
require "grpc/service"

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
      abstract class Google::Firestore::V1::Firestore
        include GRPC::Service

        @@service_name = "google.firestore.v1.Firestore"

        rpc GetDocument, receives: ::Google::Firestore::V1::GetDocumentRequest, returns: ::Google::Firestore::V1::Document
        rpc ListDocuments, receives: ::Google::Firestore::V1::ListDocumentsRequest, returns: ::Google::Firestore::V1::ListDocumentsResponse
        rpc UpdateDocument, receives: ::Google::Firestore::V1::UpdateDocumentRequest, returns: ::Google::Firestore::V1::Document
        rpc DeleteDocument, receives: ::Google::Firestore::V1::DeleteDocumentRequest, returns: ::Google::Protobuf::Empty
        rpc BatchGetDocuments, receives: ::Google::Firestore::V1::BatchGetDocumentsRequest, returns: ::Google::Firestore::V1::BatchGetDocumentsResponse
        rpc BeginTransaction, receives: ::Google::Firestore::V1::BeginTransactionRequest, returns: ::Google::Firestore::V1::BeginTransactionResponse
        rpc Commit, receives: ::Google::Firestore::V1::CommitRequest, returns: ::Google::Firestore::V1::CommitResponse
        rpc Rollback, receives: ::Google::Firestore::V1::RollbackRequest, returns: ::Google::Protobuf::Empty
        rpc RunQuery, receives: ::Google::Firestore::V1::RunQueryRequest, returns: ::Google::Firestore::V1::RunQueryResponse
        rpc RunAggregationQuery, receives: ::Google::Firestore::V1::RunAggregationQueryRequest, returns: ::Google::Firestore::V1::RunAggregationQueryResponse
        rpc PartitionQuery, receives: ::Google::Firestore::V1::PartitionQueryRequest, returns: ::Google::Firestore::V1::PartitionQueryResponse
        rpc Write, receives: ::Google::Firestore::V1::WriteRequest, returns: ::Google::Firestore::V1::WriteResponse
        rpc Listen, receives: ::Google::Firestore::V1::ListenRequest, returns: ::Google::Firestore::V1::ListenResponse
        rpc ListCollectionIds, receives: ::Google::Firestore::V1::ListCollectionIdsRequest, returns: ::Google::Firestore::V1::ListCollectionIdsResponse
        rpc BatchWrite, receives: ::Google::Firestore::V1::BatchWriteRequest, returns: ::Google::Firestore::V1::BatchWriteResponse
        rpc CreateDocument, receives: ::Google::Firestore::V1::CreateDocumentRequest, returns: ::Google::Firestore::V1::Document
      end
    end
  end
end
