# typed: strong

module Autorender
  module Models
    class UploadData < Autorender::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Autorender::UploadData, Autorender::Internal::AnyHash)
        end

      # Unique file record ID
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # 10-character file number identifier
      sig { returns(T.nilable(String)) }
      attr_reader :file_no

      sig { params(file_no: String).void }
      attr_writer :file_no

      # File size in bytes (after processing)
      sig { returns(T.nilable(Integer)) }
      attr_reader :file_size

      sig { params(file_size: Integer).void }
      attr_writer :file_size

      # File format/extension (e.g., jpg, png, webp)
      sig { returns(T.nilable(String)) }
      attr_reader :format_

      sig { params(format_: String).void }
      attr_writer :format_

      # Image height in pixels (null for non-image files)
      sig { returns(T.nilable(Integer)) }
      attr_accessor :height

      # Final filename (may include random suffix if requested)
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Folder path where the file is stored
      sig { returns(T.nilable(String)) }
      attr_reader :path

      sig { params(path: String).void }
      attr_writer :path

      # Full CDN URL to access the uploaded file
      sig { returns(T.nilable(String)) }
      attr_reader :url

      sig { params(url: String).void }
      attr_writer :url

      # Image width in pixels (null for non-image files)
      sig { returns(T.nilable(Integer)) }
      attr_accessor :width

      # Workspace identifier
      sig { returns(T.nilable(String)) }
      attr_reader :workspace_no

      sig { params(workspace_no: String).void }
      attr_writer :workspace_no

      sig do
        params(
          id: String,
          file_no: String,
          file_size: Integer,
          format_: String,
          height: T.nilable(Integer),
          name: String,
          path: String,
          url: String,
          width: T.nilable(Integer),
          workspace_no: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique file record ID
        id: nil,
        # 10-character file number identifier
        file_no: nil,
        # File size in bytes (after processing)
        file_size: nil,
        # File format/extension (e.g., jpg, png, webp)
        format_: nil,
        # Image height in pixels (null for non-image files)
        height: nil,
        # Final filename (may include random suffix if requested)
        name: nil,
        # Folder path where the file is stored
        path: nil,
        # Full CDN URL to access the uploaded file
        url: nil,
        # Image width in pixels (null for non-image files)
        width: nil,
        # Workspace identifier
        workspace_no: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            file_no: String,
            file_size: Integer,
            format_: String,
            height: T.nilable(Integer),
            name: String,
            path: String,
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
