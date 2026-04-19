# typed: strong

module Autorender
  module Models
    class FileUpdateParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Autorender::FileUpdateParams, Autorender::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :file_no

      # Tags to add to the existing set
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :add_tags

      sig { params(add_tags: T::Array[String]).void }
      attr_writer :add_tags

      # Metadata to merge into existing metadata
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, T.anything]).void }
      attr_writer :metadata

      # Tags to remove from the existing set
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :remove_tags

      sig { params(remove_tags: T::Array[String]).void }
      attr_writer :remove_tags

      sig do
        params(
          file_no: String,
          add_tags: T::Array[String],
          metadata: T::Hash[Symbol, T.anything],
          remove_tags: T::Array[String],
          request_options: Autorender::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        file_no:,
        # Tags to add to the existing set
        add_tags: nil,
        # Metadata to merge into existing metadata
        metadata: nil,
        # Tags to remove from the existing set
        remove_tags: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            file_no: String,
            add_tags: T::Array[String],
            metadata: T::Hash[Symbol, T.anything],
            remove_tags: T::Array[String],
            request_options: Autorender::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
