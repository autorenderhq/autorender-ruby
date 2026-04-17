# typed: strong

module Autorender
  module Resources
    class Uploads
      # Large file uploads via multipart
      class Multipart
        # Finalize a multipart upload after all parts have been uploaded. Assembles the
        # parts and creates the file record.
        sig do
          params(
            session_id: String,
            request_options: Autorender::RequestOptions::OrHash
          ).returns(Autorender::Upload)
        end
        def complete(
          # Session ID from POST /api/v1/multipart/start
          session_id:,
          request_options: {}
        )
        end

        # Initiate a multipart upload session for large files. Returns presigned PUT URLs
        # for each part. Upload each part to its URL in order, then call POST
        # /api/v1/multipart/complete.
        sig do
          params(
            file_name: String,
            format_: String,
            size: Integer,
            custom_id: String,
            folder: String,
            metadata: T::Hash[Symbol, T.anything],
            random_prefix: T::Boolean,
            tags: T::Array[String],
            ttl_seconds: Integer,
            request_options: Autorender::RequestOptions::OrHash
          ).returns(Autorender::Uploads::Session)
        end
        def start(
          # Original filename (e.g., big-video.mp4)
          file_name:,
          # MIME type (e.g., video/mp4, image/jpeg)
          format_:,
          # Total file size in bytes
          size:,
          custom_id: nil,
          # Destination folder path
          folder: nil,
          metadata: nil,
          random_prefix: nil,
          tags: nil,
          # Presigned URL lifetime in seconds
          ttl_seconds: nil,
          request_options: {}
        )
        end

        # Upload a single part using one of the presigned URLs from POST
        # /api/v1/multipart/start. Send raw bytes directly — do not include the AutoRender
        # Authorization header, as auth is embedded in the presigned URL.
        sig do
          params(
            body: Autorender::Internal::FileInput,
            request_options: Autorender::RequestOptions::OrHash
          ).void
        end
        def upload_part(
          # One multipart chunk
          body:,
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
end
