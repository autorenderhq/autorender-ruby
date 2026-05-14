# typed: strong

module Autorender
  module Resources
    # Upload endpoints (API key required)
    class MultipartUploads
      # Finalise a multipart upload session and return the stored file record.
      sig do
        params(
          session_id: String,
          uuid: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(Autorender::Models::MultipartUploadCompleteResponse)
      end
      def complete(session_id:, uuid: nil, request_options: {})
      end

      # Initialise a multipart upload session and receive pre-signed part URLs.
      sig do
        params(
          file_name: String,
          format_: String,
          size: Integer,
          custom_id: String,
          folder: String,
          metadata: T::Hash[Symbol, T.anything],
          random_prefix: T::Boolean,
          tags: Autorender::MultipartUploadStartParams::Tags::Variants,
          ttl_seconds: Integer,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(Autorender::Models::MultipartUploadStartResponse)
      end
      def start(
        file_name:,
        format_:,
        size:,
        custom_id: nil,
        folder: nil,
        metadata: nil,
        random_prefix: nil,
        tags: nil,
        ttl_seconds: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Autorender::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
