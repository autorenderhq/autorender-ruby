# typed: strong

module Autorender
  module Models
    class FileRenameResponse < Autorender::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Autorender::Models::FileRenameResponse,
            Autorender::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      sig { returns(T.nilable(String)) }
      attr_reader :extension

      sig { params(extension: String).void }
      attr_writer :extension

      sig { returns(T.nilable(String)) }
      attr_reader :file_no

      sig { params(file_no: String).void }
      attr_writer :file_no

      sig { returns(T.nilable(Integer)) }
      attr_reader :file_size

      sig { params(file_size: Integer).void }
      attr_writer :file_size

      sig { returns(T.nilable(String)) }
      attr_accessor :folder_id

      sig { returns(T.nilable(String)) }
      attr_reader :format_

      sig { params(format_: String).void }
      attr_writer :format_

      sig { returns(T.nilable(Integer)) }
      attr_accessor :height

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :meta_data

      sig { params(meta_data: T::Hash[Symbol, T.anything]).void }
      attr_writer :meta_data

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(String)) }
      attr_accessor :path

      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      sig { returns(T.nilable(String)) }
      attr_reader :url

      sig { params(url: String).void }
      attr_writer :url

      sig { returns(T.nilable(Integer)) }
      attr_accessor :width

      sig { returns(T.nilable(String)) }
      attr_reader :workspace_no

      sig { params(workspace_no: String).void }
      attr_writer :workspace_no

      sig do
        params(
          id: String,
          created_at: Time,
          extension: String,
          file_no: String,
          file_size: Integer,
          folder_id: T.nilable(String),
          format_: String,
          height: T.nilable(Integer),
          meta_data: T::Hash[Symbol, T.anything],
          name: String,
          path: T.nilable(String),
          updated_at: Time,
          url: String,
          width: T.nilable(Integer),
          workspace_no: String
        ).returns(T.attached_class)
      end
      def self.new(
        id: nil,
        created_at: nil,
        extension: nil,
        file_no: nil,
        file_size: nil,
        folder_id: nil,
        format_: nil,
        height: nil,
        meta_data: nil,
        name: nil,
        path: nil,
        updated_at: nil,
        url: nil,
        width: nil,
        workspace_no: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            extension: String,
            file_no: String,
            file_size: Integer,
            folder_id: T.nilable(String),
            format_: String,
            height: T.nilable(Integer),
            meta_data: T::Hash[Symbol, T.anything],
            name: String,
            path: T.nilable(String),
            updated_at: Time,
            url: String,
            width: T.nilable(Integer),
            workspace_no: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
