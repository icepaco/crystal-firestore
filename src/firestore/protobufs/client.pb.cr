## Generated from google/api/client.proto for google.api
require "protobuf"

require "./launch_stage.pb.cr"
require "./descriptor.pb.cr"
require "./duration.pb.cr"

module Google
  module Api
    enum ClientLibraryOrganization
      CLIENTLIBRARYORGANIZATIONUNSPECIFIED = 0
      CLOUD = 1
      ADS = 2
      PHOTOS = 3
      STREETVIEW = 4
      SHOPPING = 5
      GEO = 6
      GENERATIVEAI = 7
    end
    enum ClientLibraryDestination
      CLIENTLIBRARYDESTINATIONUNSPECIFIED = 0
      GITHUB = 10
      PACKAGEMANAGER = 20
    end
    
    struct CommonLanguageSettings
      include ::Protobuf::Message
      
      contract_of "proto3" do
        optional :reference_docs_uri, :string, 1
        repeated :destinations, ClientLibraryDestination, 2
        optional :selective_gapic_generation, SelectiveGapicGeneration, 3
      end
    end
    
    struct ClientLibrarySettings
      include ::Protobuf::Message
      
      contract_of "proto3" do
        optional :version, :string, 1
        optional :launch_stage, LaunchStage, 2
        optional :rest_numeric_enums, :bool, 3
        optional :java_settings, JavaSettings, 21
        optional :cpp_settings, CppSettings, 22
        optional :php_settings, PhpSettings, 23
        optional :python_settings, PythonSettings, 24
        optional :node_settings, NodeSettings, 25
        optional :dotnet_settings, DotnetSettings, 26
        optional :ruby_settings, RubySettings, 27
        optional :go_settings, GoSettings, 28
      end
    end
    
    struct Publishing
      include ::Protobuf::Message
      
      contract_of "proto3" do
        repeated :method_settings, MethodSettings, 2
        optional :new_issue_uri, :string, 101
        optional :documentation_uri, :string, 102
        optional :api_short_name, :string, 103
        optional :github_label, :string, 104
        repeated :codeowner_github_teams, :string, 105
        optional :doc_tag_prefix, :string, 106
        optional :organization, ClientLibraryOrganization, 107
        repeated :library_settings, ClientLibrarySettings, 109
        optional :proto_reference_documentation_uri, :string, 110
        optional :rest_reference_documentation_uri, :string, 111
      end
    end
    
    struct JavaSettings
      include ::Protobuf::Message
      
      struct ServiceClassNamesEntry
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :key, :string, 1
          optional :value, :string, 2
        end
      end
      
      contract_of "proto3" do
        optional :library_package, :string, 1
        repeated :service_class_names, JavaSettings::ServiceClassNamesEntry, 2
        optional :common, CommonLanguageSettings, 3
      end
    end
    
    struct CppSettings
      include ::Protobuf::Message
      
      contract_of "proto3" do
        optional :common, CommonLanguageSettings, 1
      end
    end
    
    struct PhpSettings
      include ::Protobuf::Message
      
      contract_of "proto3" do
        optional :common, CommonLanguageSettings, 1
      end
    end
    
    struct PythonSettings
      include ::Protobuf::Message
      
      struct ExperimentalFeatures
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :rest_async_io_enabled, :bool, 1
          optional :protobuf_pythonic_types_enabled, :bool, 2
        end
      end
      
      contract_of "proto3" do
        optional :common, CommonLanguageSettings, 1
        optional :experimental_features, PythonSettings::ExperimentalFeatures, 2
      end
    end
    
    struct NodeSettings
      include ::Protobuf::Message
      
      contract_of "proto3" do
        optional :common, CommonLanguageSettings, 1
      end
    end
    
    struct DotnetSettings
      include ::Protobuf::Message
      
      struct RenamedServicesEntry
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :key, :string, 1
          optional :value, :string, 2
        end
      end
      
      struct RenamedResourcesEntry
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :key, :string, 1
          optional :value, :string, 2
        end
      end
      
      contract_of "proto3" do
        optional :common, CommonLanguageSettings, 1
        repeated :renamed_services, DotnetSettings::RenamedServicesEntry, 2
        repeated :renamed_resources, DotnetSettings::RenamedResourcesEntry, 3
        repeated :ignored_resources, :string, 4
        repeated :forced_namespace_aliases, :string, 5
        repeated :handwritten_signatures, :string, 6
      end
    end
    
    struct RubySettings
      include ::Protobuf::Message
      
      contract_of "proto3" do
        optional :common, CommonLanguageSettings, 1
      end
    end
    
    struct GoSettings
      include ::Protobuf::Message
      
      contract_of "proto3" do
        optional :common, CommonLanguageSettings, 1
      end
    end
    
    struct MethodSettings
      include ::Protobuf::Message
      
      struct LongRunning
        include ::Protobuf::Message
        
        contract_of "proto3" do
          optional :initial_poll_delay, Google::Protobuf::Duration, 1
          optional :poll_delay_multiplier, :float, 2
          optional :max_poll_delay, Google::Protobuf::Duration, 3
          optional :total_poll_timeout, Google::Protobuf::Duration, 4
        end
      end
      
      contract_of "proto3" do
        optional :selector, :string, 1
        optional :long_running, MethodSettings::LongRunning, 2
        repeated :auto_populated_fields, :string, 3
      end
    end
    
    struct SelectiveGapicGeneration
      include ::Protobuf::Message
      
      contract_of "proto3" do
        repeated :methods, :string, 1
      end
    end
    end
  end
