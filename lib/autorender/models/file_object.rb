# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Files#retrieve
    class FileObject < Autorender::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Autorender::Models::FileObject::Data, nil]
      optional :data, -> { Autorender::FileObject::Data }

      # @!attribute success
      #
      #   @return [Boolean, nil]
      optional :success, Autorender::Internal::Type::Boolean

      # @!method initialize(data: nil, success: nil)
      #   @param data [Autorender::Models::FileObject::Data]
      #   @param success [Boolean]

      # @see Autorender::Models::FileObject#data
      class Data < Autorender::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute asset_key
        #
        #   @return [String, nil]
        optional :asset_key, String

        # @!attribute asset_url
        #
        #   @return [String, nil]
        optional :asset_url, String

        # @!attribute dimensions
        #
        #   @return [Autorender::Models::FileObject::Data::Dimensions, nil]
        optional :dimensions, -> { Autorender::FileObject::Data::Dimensions }

        # @!attribute extension
        #
        #   @return [String, nil]
        optional :extension, String

        # @!attribute file_no
        #
        #   @return [String, nil]
        optional :file_no, String

        # @!attribute folder
        #
        #   @return [String, nil]
        optional :folder, String, nil?: true

        # @!attribute format_
        #
        #   @return [String, nil]
        optional :format_, String, api_name: :format

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute path
        #
        #   @return [String, nil]
        optional :path, String, nil?: true

        # @!attribute size
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!attribute uploaded_at
        #
        #   @return [Time, nil]
        optional :uploaded_at, Time

        # @!attribute uploaded_by
        #
        #   @return [String, nil]
        optional :uploaded_by, String

        # @!attribute url
        #
        #   @return [String, nil]
        optional :url, String

        # @!attribute workspace
        #
        #   @return [Autorender::Models::FileObject::Data::Workspace, nil]
        optional :workspace, -> { Autorender::FileObject::Data::Workspace }

        # @!method initialize(id: nil, asset_key: nil, asset_url: nil, dimensions: nil, extension: nil, file_no: nil, folder: nil, format_: nil, name: nil, path: nil, size: nil, uploaded_at: nil, uploaded_by: nil, url: nil, workspace: nil)
        #   @param id [String]
        #   @param asset_key [String]
        #   @param asset_url [String]
        #   @param dimensions [Autorender::Models::FileObject::Data::Dimensions]
        #   @param extension [String]
        #   @param file_no [String]
        #   @param folder [String, nil]
        #   @param format_ [String]
        #   @param name [String]
        #   @param path [String, nil]
        #   @param size [Integer]
        #   @param uploaded_at [Time]
        #   @param uploaded_by [String]
        #   @param url [String]
        #   @param workspace [Autorender::Models::FileObject::Data::Workspace]

        # @see Autorender::Models::FileObject::Data#dimensions
        class Dimensions < Autorender::Internal::Type::BaseModel
          # @!attribute height
          #
          #   @return [Integer, nil]
          optional :height, Integer

          # @!attribute width
          #
          #   @return [Integer, nil]
          optional :width, Integer

          # @!method initialize(height: nil, width: nil)
          #   @param height [Integer]
          #   @param width [Integer]
        end

        # @see Autorender::Models::FileObject::Data#workspace
        class Workspace < Autorender::Internal::Type::BaseModel
          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute workspace_no
          #
          #   @return [String, nil]
          optional :workspace_no, String

          # @!method initialize(name: nil, workspace_no: nil)
          #   @param name [String]
          #   @param workspace_no [String]
        end
      end
    end
  end
end
