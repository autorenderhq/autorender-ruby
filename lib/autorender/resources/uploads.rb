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

      # @api private
      #
      # @param client [Autorender::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
