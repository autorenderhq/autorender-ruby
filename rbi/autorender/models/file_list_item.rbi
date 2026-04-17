# typed: strong

module Autorender
  module Models
    class FileListItem < Autorender::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Autorender::FileListItem, Autorender::Internal::AnyHash)
        end

      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # Asset category, e.g. image
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
      attr_reader :format_

      sig { params(format_: String).void }
      attr_writer :format_

      sig { returns(T.nilable(Integer)) }
      attr_accessor :height

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Relative path / display path
      sig { returns(T.nilable(String)) }
      attr_reader :path

      sig { params(path: String).void }
      attr_writer :path

      # Thumbnail CDN URL (field name as returned by the API)
      sig { returns(T.nilable(String)) }
      attr_reader :thumbanil

      sig { params(thumbanil: String).void }
      attr_writer :thumbanil

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

      # File summary row in list responses
      sig do
        params(
          created_at: Time,
          extension: String,
          file_no: String,
          file_size: Integer,
          format_: String,
          height: T.nilable(Integer),
          name: String,
          path: String,
          thumbanil: String,
          url: String,
          width: T.nilable(Integer),
          workspace_no: String
        ).returns(T.attached_class)
      end
      def self.new(
        created_at: nil,
        # Asset category, e.g. image
        extension: nil,
        file_no: nil,
        file_size: nil,
        format_: nil,
        height: nil,
        name: nil,
        # Relative path / display path
        path: nil,
        # Thumbnail CDN URL (field name as returned by the API)
        thumbanil: nil,
        url: nil,
        width: nil,
        workspace_no: nil
      )
      end

      sig do
        override.returns(
          {
            created_at: Time,
            extension: String,
            file_no: String,
            file_size: Integer,
            format_: String,
            height: T.nilable(Integer),
            name: String,
            path: String,
            thumbanil: String,
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
