# frozen_string_literal: true

module Autorender
  module Models
    class UploadData < Autorender::Internal::Type::BaseModel
      # @!attribute id
      #   Unique file record ID
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute file_no
      #   10-character file number identifier
      #
      #   @return [String, nil]
      optional :file_no, String

      # @!attribute file_size
      #   File size in bytes (after processing)
      #
      #   @return [Integer, nil]
      optional :file_size, Integer

      # @!attribute format_
      #   File format/extension (e.g., jpg, png, webp)
      #
      #   @return [String, nil]
      optional :format_, String, api_name: :format

      # @!attribute height
      #   Image height in pixels (null for non-image files)
      #
      #   @return [Integer, nil]
      optional :height, Integer, nil?: true

      # @!attribute name
      #   Final filename (may include random suffix if requested)
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute path
      #   Folder path where the file is stored
      #
      #   @return [String, nil]
      optional :path, String

      # @!attribute url
      #   Full CDN URL to access the uploaded file
      #
      #   @return [String, nil]
      optional :url, String

      # @!attribute width
      #   Image width in pixels (null for non-image files)
      #
      #   @return [Integer, nil]
      optional :width, Integer, nil?: true

      # @!attribute workspace_no
      #   Workspace identifier
      #
      #   @return [String, nil]
      optional :workspace_no, String

      # @!method initialize(id: nil, file_no: nil, file_size: nil, format_: nil, height: nil, name: nil, path: nil, url: nil, width: nil, workspace_no: nil)
      #   @param id [String] Unique file record ID
      #
      #   @param file_no [String] 10-character file number identifier
      #
      #   @param file_size [Integer] File size in bytes (after processing)
      #
      #   @param format_ [String] File format/extension (e.g., jpg, png, webp)
      #
      #   @param height [Integer, nil] Image height in pixels (null for non-image files)
      #
      #   @param name [String] Final filename (may include random suffix if requested)
      #
      #   @param path [String] Folder path where the file is stored
      #
      #   @param url [String] Full CDN URL to access the uploaded file
      #
      #   @param width [Integer, nil] Image width in pixels (null for non-image files)
      #
      #   @param workspace_no [String] Workspace identifier
    end
  end
end
