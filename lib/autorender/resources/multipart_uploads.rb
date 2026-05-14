# frozen_string_literal: true

module Autorender
  module Resources
    # Upload endpoints (API key required)
    class MultipartUploads
      # Finalise a multipart upload session and return the stored file record.
      #
      # @overload complete(session_id:, uuid: nil, request_options: {})
      #
      # @param session_id [String]
      # @param uuid [String]
      # @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Autorender::Models::MultipartUploadCompleteResponse]
      #
      # @see Autorender::Models::MultipartUploadCompleteParams
      def complete(params)
        parsed, options = Autorender::MultipartUploadCompleteParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v1/multipart/complete",
          body: parsed,
          model: Autorender::Models::MultipartUploadCompleteResponse,
          options: options
        )
      end

      # Initialise a multipart upload session and receive pre-signed part URLs.
      #
      # @overload start(file_name:, format_:, size:, custom_id: nil, folder: nil, metadata: nil, random_prefix: nil, tags: nil, ttl_seconds: nil, request_options: {})
      #
      # @param file_name [String]
      # @param format_ [String]
      # @param size [Integer]
      # @param custom_id [String]
      # @param folder [String]
      # @param metadata [Hash{Symbol=>Object}]
      # @param random_prefix [Boolean]
      # @param tags [Array<String>, String]
      # @param ttl_seconds [Integer]
      # @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Autorender::Models::MultipartUploadStartResponse]
      #
      # @see Autorender::Models::MultipartUploadStartParams
      def start(params)
        parsed, options = Autorender::MultipartUploadStartParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v1/multipart/start",
          body: parsed,
          model: Autorender::Models::MultipartUploadStartResponse,
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
