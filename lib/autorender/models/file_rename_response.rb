# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Files#rename
    class FileRenameResponse < Autorender::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute created_at
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute extension
      #
      #   @return [String, nil]
      optional :extension, String

      # @!attribute file_no
      #
      #   @return [String, nil]
      optional :file_no, String

      # @!attribute file_size
      #
      #   @return [Integer, nil]
      optional :file_size, Integer

      # @!attribute folder_id
      #
      #   @return [String, nil]
      optional :folder_id, String, nil?: true

      # @!attribute format_
      #
      #   @return [String, nil]
      optional :format_, String, api_name: :format

      # @!attribute height
      #
      #   @return [Integer, nil]
      optional :height, Integer, nil?: true

      # @!attribute meta_data
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :meta_data, Autorender::Internal::Type::HashOf[Autorender::Internal::Type::Unknown]

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute path
      #
      #   @return [String, nil]
      optional :path, String, nil?: true

      # @!attribute updated_at
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!attribute url
      #
      #   @return [String, nil]
      optional :url, String

      # @!attribute width
      #
      #   @return [Integer, nil]
      optional :width, Integer, nil?: true

      # @!attribute workspace_no
      #
      #   @return [String, nil]
      optional :workspace_no, String

      # @!method initialize(id: nil, created_at: nil, extension: nil, file_no: nil, file_size: nil, folder_id: nil, format_: nil, height: nil, meta_data: nil, name: nil, path: nil, updated_at: nil, url: nil, width: nil, workspace_no: nil)
      #   @param id [String]
      #   @param created_at [Time]
      #   @param extension [String]
      #   @param file_no [String]
      #   @param file_size [Integer]
      #   @param folder_id [String, nil]
      #   @param format_ [String]
      #   @param height [Integer, nil]
      #   @param meta_data [Hash{Symbol=>Object}]
      #   @param name [String]
      #   @param path [String, nil]
      #   @param updated_at [Time]
      #   @param url [String]
      #   @param width [Integer, nil]
      #   @param workspace_no [String]
    end
  end
end
