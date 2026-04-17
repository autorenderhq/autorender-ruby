# frozen_string_literal: true

module Autorender
  module Models
    class FileListItem < Autorender::Internal::Type::BaseModel
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

      # @!attribute format_
      #
      #   @return [String, nil]
      optional :format_, String, api_name: :format

      # @!attribute height
      #
      #   @return [Integer, nil]
      optional :height, Integer, nil?: true

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute path
      #
      #   @return [String, nil]
      optional :path, String

      # @!attribute thumbanil
      #   Thumbnail CDN URL
      #
      #   @return [String, nil]
      optional :thumbanil, String

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

      # @!method initialize(created_at: nil, extension: nil, file_no: nil, file_size: nil, format_: nil, height: nil, name: nil, path: nil, thumbanil: nil, url: nil, width: nil, workspace_no: nil)
      #   @param created_at [Time]
      #
      #   @param extension [String]
      #
      #   @param file_no [String]
      #
      #   @param file_size [Integer]
      #
      #   @param format_ [String]
      #
      #   @param height [Integer, nil]
      #
      #   @param name [String]
      #
      #   @param path [String]
      #
      #   @param thumbanil [String] Thumbnail CDN URL
      #
      #   @param url [String]
      #
      #   @param width [Integer, nil]
      #
      #   @param workspace_no [String]
    end
  end
end
