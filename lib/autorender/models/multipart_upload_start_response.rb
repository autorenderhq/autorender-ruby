# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::MultipartUploads#start
    class MultipartUploadStartResponse < Autorender::Internal::Type::BaseModel
      # @!attribute expire_at
      #   Unix timestamp when the session expires
      #
      #   @return [Integer]
      required :expire_at, Integer

      # @!attribute min_part_size
      #
      #   @return [Integer]
      required :min_part_size, Integer

      # @!attribute part_size
      #
      #   @return [Integer]
      required :part_size, Integer

      # @!attribute parts
      #   Pre-signed S3 upload URLs, one per part
      #
      #   @return [Array<String>]
      required :parts, Autorender::Internal::Type::ArrayOf[String]

      # @!attribute policy
      #
      #   @return [Autorender::Models::MultipartUploadStartResponse::Policy]
      required :policy, -> { Autorender::Models::MultipartUploadStartResponse::Policy }

      # @!attribute public_key
      #
      #   @return [String]
      required :public_key, String

      # @!attribute session_id
      #
      #   @return [String]
      required :session_id, String

      # @!attribute uuid
      #
      #   @return [String]
      required :uuid, String

      # @!attribute workspace_id
      #
      #   @return [String]
      required :workspace_id, String

      # @!method initialize(expire_at:, min_part_size:, part_size:, parts:, policy:, public_key:, session_id:, uuid:, workspace_id:)
      #   Session created
      #
      #   @param expire_at [Integer] Unix timestamp when the session expires
      #
      #   @param min_part_size [Integer]
      #
      #   @param part_size [Integer]
      #
      #   @param parts [Array<String>] Pre-signed S3 upload URLs, one per part
      #
      #   @param policy [Autorender::Models::MultipartUploadStartResponse::Policy]
      #
      #   @param public_key [String]
      #
      #   @param session_id [String]
      #
      #   @param uuid [String]
      #
      #   @param workspace_id [String]

      # @see Autorender::Models::MultipartUploadStartResponse#policy
      class Policy < Autorender::Internal::Type::BaseModel
        # @!attribute folder
        #
        #   @return [String]
        required :folder, String

        # @!attribute format_
        #
        #   @return [String]
        required :format_, String, api_name: :format

        # @!attribute size
        #
        #   @return [Integer]
        required :size, Integer

        # @!attribute tags
        #
        #   @return [Array<String>]
        required :tags, Autorender::Internal::Type::ArrayOf[String]

        # @!method initialize(folder:, format_:, size:, tags:)
        #   @param folder [String]
        #   @param format_ [String]
        #   @param size [Integer]
        #   @param tags [Array<String>]
      end
    end
  end
end
