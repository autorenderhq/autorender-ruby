# frozen_string_literal: true

module Autorender
  module Resources
    class Uploads
      # Upload a file to your AutoRender workspace with optional transformations, tags,
      # and folder organization
      #
      # @overload create(file:, file_name:, custom_id: nil, folder: nil, metadata: nil, random_prefix: nil, tags: nil, transform: nil, request_options: {})
      #
      # @param file [Pathname, StringIO, IO, String, Autorender::FilePart] The file to upload (binary data)
      #
      # @param file_name [String] File name for the uploaded file (e.g., my-image.jpg)
      #
      # @param custom_id [String] Custom identifier for the file
      #
      # @param folder [String] Folder path where the file will be stored (e.g., uploads/my-folder)
      #
      # @param metadata [String] JSON string for custom metadata (e.g., {"key": "value"})
      #
      # @param random_prefix [String] Set to "true" to add a random suffix to filename
      #
      # @param tags [String] Comma-separated tags (e.g., tag1,tag2,tag3)
      #
      # @param transform [String] Image transformation string (e.g., w_800,h_600,q_90)
      #
      # @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Autorender::Models::Upload]
      #
      # @see Autorender::Models::UploadCreateParams
      def create(params)
        parsed, options = Autorender::UploadCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v1/uploads",
          headers: {"content-type" => "multipart/form-data"},
          body: parsed,
          model: Autorender::Upload,
          options: options
        )
      end

      # Fetch a file from a remote URL and store it in your AutoRender workspace.
      #
      # @overload create_from_url(remote_url:, custom_id: nil, folder: nil, metadata: nil, random_prefix: nil, tags: nil, transform: nil, webhook_url: nil, request_options: {})
      #
      # @param remote_url [String] The HTTP or HTTPS URL of the image to download
      #
      # @param custom_id [String] Custom identifier for tracking the upload
      #
      # @param folder [String] Folder path where the file should be stored
      #
      # @param metadata [String] JSON string containing custom metadata object
      #
      # @param random_prefix [String] Set to 'true' to generate a random suffix for the filename
      #
      # @param tags [String] Comma-separated list of tags to apply to the file
      #
      # @param transform [String] Transformation string to apply during upload (e.g., w_800,h_600,c_crop)
      #
      # @param webhook_url [String] URL to receive webhook notification when upload completes
      #
      # @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Autorender::Models::Upload]
      #
      # @see Autorender::Models::UploadCreateFromURLParams
      def create_from_url(params)
        parsed, options = Autorender::UploadCreateFromURLParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v1/uploads/remote",
          body: parsed,
          model: Autorender::Upload,
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
