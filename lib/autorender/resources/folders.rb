# frozen_string_literal: true

module Autorender
  module Resources
    class Folders
      # Create a folder under an optional parent.
      #
      # @overload create(name:, parent_folder_no: nil, request_options: {})
      #
      # @param name [String] Folder display name
      #
      # @param parent_folder_no [String] Parent folder number; omit or null for root
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

      # List folders under an optional parent. Omit `parent_folder_no` to list
      # root-level folders.
      #
      # @overload list(parent_folder_no: nil, request_options: {})
      #
      # @param parent_folder_no [String] Only return direct children of this folder (folder number)
      #
      # @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Autorender::Models::FolderListResponse]
      #
      # @see Autorender::Models::FolderListParams
      def list(params = {})
        parsed, options = Autorender::FolderListParams.dump_request(params)
        query = Autorender::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "api/v1/folders",
          query: query,
          model: Autorender::Models::FolderListResponse,
          options: options
        )
      end

      # Delete a folder by folder number. No request body required.
      #
      # @overload delete(folder_no, request_options: {})
      #
      # @param folder_no [String]
      # @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Autorender::Models::FolderDeleteResponse]
      #
      # @see Autorender::Models::FolderDeleteParams
      def delete(folder_no, params = {})
        @client.request(
          method: :delete,
          path: ["api/v1/folders/%1$s", folder_no],
          model: Autorender::Models::FolderDeleteResponse,
          options: params[:request_options]
        )
      end

      # Rename a folder by `folder_no`.
      #
      # @overload rename(folder_no, name:, request_options: {})
      #
      # @param folder_no [String]
      # @param name [String]
      # @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Autorender::Models::Folder]
      #
      # @see Autorender::Models::FolderRenameParams
      def rename(folder_no, params)
        parsed, options = Autorender::FolderRenameParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v1/folders/rename/%1$s", folder_no],
          body: parsed,
          model: Autorender::Folder,
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
