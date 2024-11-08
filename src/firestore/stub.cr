require "grpc"
require "./protobufs/firestore.pb"
module Google
    module Cloud
        module Firestore
            class Fireclient
                ENDPOINT = "firestore.googleapis.com"
                def initialize()
                    @channel = GRPC::SERVICE::STUB.new(ENDPOINT, 443)
                    @firestub = firestore_pb2.FirestoreStub(channel)
                end
            end
        end
    end
end