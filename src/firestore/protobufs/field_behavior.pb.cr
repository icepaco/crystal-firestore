## Generated from google/api/field_behavior.proto for google.api
require "protobuf"

require "./descriptor.pb.cr"

module Google
  module Api
    enum FieldBehavior
      FIELDBEHAVIORUNSPECIFIED = 0
      OPTIONAL = 1
      REQUIRED = 2
      OUTPUTONLY = 3
      INPUTONLY = 4
      IMMUTABLE = 5
      UNORDEREDLIST = 6
      NONEMPTYDEFAULT = 7
      IDENTIFIER = 8
    end
    end
  end
