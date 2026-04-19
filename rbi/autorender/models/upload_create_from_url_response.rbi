# typed: strong

module Autorender
  module Models
    class UploadCreateFromURLResponse < Autorender::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Autorender::Models::UploadCreateFromURLResponse,
            Autorender::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :custom_id

      sig { returns(String) }
      attr_accessor :file_no

      sig { returns(T.nilable(String)) }
      attr_accessor :folder_no

      sig { returns(T.nilable(Integer)) }
      attr_accessor :height

      sig { returns(T::Boolean) }
      attr_accessor :is_duplicate

      sig { returns(T::Boolean) }
      attr_accessor :is_private

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :mime_type

      sig { returns(String) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :path

      sig { returns(Integer) }
      attr_accessor :size

      sig { returns(T::Array[String]) }
      attr_accessor :tags

      sig { returns(String) }
      attr_accessor :upload_source

      sig { returns(String) }
      attr_accessor :url

      sig { returns(T.nilable(Integer)) }
      attr_accessor :width

      sig { returns(String) }
      attr_accessor :workspace_id

      sig { returns(T.nilable(String)) }
      attr_reader :format_

      sig { params(format_: String).void }
      attr_writer :format_

      sig { returns(T.nilable(String)) }
      attr_reader :hash_

      sig { params(hash_: String).void }
      attr_writer :hash_

      # Upload created
      sig do
        params(
          id: String,
          created_at: Time,
          custom_id: T.nilable(String),
          file_no: String,
          folder_no: T.nilable(String),
          height: T.nilable(Integer),
          is_duplicate: T::Boolean,
          is_private: T::Boolean,
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          mime_type: String,
          name: String,
          path: String,
          size: Integer,
          tags: T::Array[String],
          upload_source: String,
          url: String,
          width: T.nilable(Integer),
          workspace_id: String,
          format_: String,
          hash_: String
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        custom_id:,
        file_no:,
        folder_no:,
        height:,
        is_duplicate:,
        is_private:,
        metadata:,
        mime_type:,
        name:,
        path:,
        size:,
        tags:,
        upload_source:,
        url:,
        width:,
        workspace_id:,
        format_: nil,
        hash_: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            custom_id: T.nilable(String),
            file_no: String,
            folder_no: T.nilable(String),
            height: T.nilable(Integer),
            is_duplicate: T::Boolean,
            is_private: T::Boolean,
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            mime_type: String,
            name: String,
            path: String,
            size: Integer,
            tags: T::Array[String],
            upload_source: String,
            url: String,
            width: T.nilable(Integer),
            workspace_id: String,
            format_: String,
            hash_: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
