# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Uploads#create_from_url
    class UploadCreateFromURLResponse < Autorender::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute custom_id
      #
      #   @return [String, nil]
      required :custom_id, String, nil?: true

      # @!attribute extension
      #
      #   @return [String]
      required :extension, String

      # @!attribute file_no
      #
      #   @return [String]
      required :file_no, String

      # @!attribute folder_no
      #
      #   @return [String, nil]
      required :folder_no, String, nil?: true

      # @!attribute height
      #
      #   @return [Integer, nil]
      required :height, Integer, nil?: true

      # @!attribute is_duplicate
      #
      #   @return [Boolean]
      required :is_duplicate, Autorender::Internal::Type::Boolean

      # @!attribute metadata
      #
      #   @return [Hash{Symbol=>Object}, nil]
      required :metadata, Autorender::Internal::Type::HashOf[Autorender::Internal::Type::Unknown], nil?: true

      # @!attribute mime_type
      #
      #   @return [String]
      required :mime_type, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute path
      #
      #   @return [String]
      required :path, String

      # @!attribute size
      #
      #   @return [Integer]
      required :size, Integer

      # @!attribute tags
      #
      #   @return [Array<String>]
      required :tags, Autorender::Internal::Type::ArrayOf[String]

      # @!attribute thumbnail
      #
      #   @return [String]
      required :thumbnail, String

      # @!attribute upload_source
      #
      #   @return [String]
      required :upload_source, String

      # @!attribute url
      #
      #   @return [String]
      required :url, String

      # @!attribute width
      #
      #   @return [Integer, nil]
      required :width, Integer, nil?: true

      # @!attribute workspace_id
      #
      #   @return [String]
      required :workspace_id, String

      # @!attribute format_
      #
      #   @return [String, nil]
      optional :format_, String, api_name: :format

      # @!attribute hash_
      #
      #   @return [String, nil]
      optional :hash_, String, api_name: :hash

      # @!attribute is_private
      #
      #   @return [Boolean, nil]
      optional :is_private, Autorender::Internal::Type::Boolean

      # @!method initialize(id:, created_at:, custom_id:, extension:, file_no:, folder_no:, height:, is_duplicate:, metadata:, mime_type:, name:, path:, size:, tags:, thumbnail:, upload_source:, url:, width:, workspace_id:, format_: nil, hash_: nil, is_private: nil)
      #   Upload created
      #
      #   @param id [String]
      #   @param created_at [Time]
      #   @param custom_id [String, nil]
      #   @param extension [String]
      #   @param file_no [String]
      #   @param folder_no [String, nil]
      #   @param height [Integer, nil]
      #   @param is_duplicate [Boolean]
      #   @param metadata [Hash{Symbol=>Object}, nil]
      #   @param mime_type [String]
      #   @param name [String]
      #   @param path [String]
      #   @param size [Integer]
      #   @param tags [Array<String>]
      #   @param thumbnail [String]
      #   @param upload_source [String]
      #   @param url [String]
      #   @param width [Integer, nil]
      #   @param workspace_id [String]
      #   @param format_ [String]
      #   @param hash_ [String]
      #   @param is_private [Boolean]
    end
  end
end
