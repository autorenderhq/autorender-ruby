# frozen_string_literal: true

module Autorender
  module Resources
    # Folder management endpoints (API key required)
    class Folders
      # Create folder
      #
      # @overload create(name:, parent_folder_no: nil, request_options: {})
      #
      # @param name [String] Folder name without slashes
      #
      # @param parent_folder_no [String] Parent folder number
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

      # List folders
      #
      # @overload list(parent_folder_no: nil, search: nil, sort: nil, request_options: {})
      #
      # @param parent_folder_no [String] Filter by parent folder number
      #
      # @param search [String] Partial name match (case-insensitive)
      #
      # @param sort [Symbol, Autorender::Models::FolderListParams::Sort]
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
