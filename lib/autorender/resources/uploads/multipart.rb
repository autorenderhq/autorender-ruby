# frozen_string_literal: true

module Autorender
  module Resources
    class Uploads
      # Large file uploads via multipart
      class Multipart
        # Finalize a multipart upload after all parts have been uploaded. Assembles the
        # parts and creates the file record.
        #
        # @overload complete(session_id:, request_options: {})
        #
        # @param session_id [String] Session ID from POST /api/v1/multipart/start
        #
        # @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Autorender::Models::Upload]
        #
        # @see Autorender::Models::Uploads::MultipartCompleteParams
        def complete(params)
          parsed, options = Autorender::Uploads::MultipartCompleteParams.dump_request(params)
          @client.request(
            method: :post,
            path: "api/v1/multipart/complete",
            body: parsed,
            model: Autorender::Upload,
            options: options
          )
        end

        # Initiate a multipart upload session for large files. Returns presigned PUT URLs
        # for each part. Upload each part to its URL in order, then call POST
        # /api/v1/multipart/complete.
        #
        # @overload start(file_name:, format_:, size:, custom_id: nil, folder: nil, metadata: nil, random_prefix: nil, tags: nil, ttl_seconds: nil, request_options: {})
        #
        # @param file_name [String] Original filename (e.g., big-video.mp4)
        #
        # @param format_ [String] MIME type (e.g., video/mp4, image/jpeg)
        #
        # @param size [Integer] Total file size in bytes
        #
        # @param custom_id [String]
        #
        # @param folder [String] Destination folder path
        #
        # @param metadata [Hash{Symbol=>Object}]
        #
        # @param random_prefix [Boolean]
        #
        # @param tags [Array<String>]
        #
        # @param ttl_seconds [Integer] Presigned URL lifetime in seconds
        #
        # @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Autorender::Models::Uploads::Session]
        #
        # @see Autorender::Models::Uploads::MultipartStartParams
        def start(params)
          parsed, options = Autorender::Uploads::MultipartStartParams.dump_request(params)
          @client.request(
            method: :post,
            path: "api/v1/multipart/start",
            body: parsed,
            model: Autorender::Uploads::Session,
            options: options
          )
        end

        # Upload a single part using one of the presigned URLs from POST
        # /api/v1/multipart/start. Send raw bytes directly — do not include the AutoRender
        # Authorization header, as auth is embedded in the presigned URL.
        #
        # @overload upload_part(body:, request_options: {})
        #
        # @param body [Pathname, StringIO, IO, String, Autorender::FilePart] One multipart chunk uploaded to a presigned URL
        #
        # @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Autorender::Models::Uploads::MultipartUploadPartParams
        def upload_part(params)
          parsed, options = Autorender::Uploads::MultipartUploadPartParams.dump_request(params)
          @client.request(
            method: :put,
            path: "api/v1/multipart/parts",
            headers: {"content-type" => "application/octet-stream"},
            body: parsed[:body],
            model: NilClass,
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
end
