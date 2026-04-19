# frozen_string_literal: true

module Autorender
  module Resources
    # Folder management endpoints (API key required)
    class Folders
      # Create folder
      #
      # @overload create(folder_name:, path: nil, request_options: {})
      #
      # @param folder_name [String] Folder name without slashes
      #
      # @param path [String] Optional parent path, e.g. products/sku123
      #
      # @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Autorender::Models::FolderCreateResponse]
      #
      # @see Autorender::Models::FolderCreateParams
      def create(params)
        parsed, options = Autorender::FolderCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v1/folders",
          body: parsed,
          model: Autorender::Models::FolderCreateResponse,
          options: options
        )
      end

      # Delete folder
      #
      # @overload delete(folder_no, request_options: {})
      #
      # @param folder_no [String]
      # @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Autorender::Models::FolderDeleteParams
      def delete(folder_no, params = {})
        @client.request(
          method: :delete,
          path: ["api/v1/folders/%1$s", folder_no],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Rename folder
      #
      # @overload rename(folder_no, name:, request_options: {})
      #
      # @param folder_no [String]
      #
      # @param name [String] New folder name without slashes
      #
      # @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Autorender::Models::FolderRenameResponse]
      #
      # @see Autorender::Models::FolderRenameParams
      def rename(folder_no, params)
        parsed, options = Autorender::FolderRenameParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v1/folders/rename/%1$s", folder_no],
          body: parsed,
          model: Autorender::Models::FolderRenameResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Autorender::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
