# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Uploads#generate_token
    class UploadGenerateTokenResponse < Autorender::Internal::Type::BaseModel
      # @!attribute token
      #
      #   @return [String, nil]
      optional :token, String

      # @!attribute expire_at
      #   Unix timestamp of expiry
      #
      #   @return [Integer, nil]
      optional :expire_at, Integer

      # @!attribute policy
      #
      #   @return [Autorender::Models::UploadGenerateTokenResponse::Policy, nil]
      optional :policy, -> { Autorender::Models::UploadGenerateTokenResponse::Policy }

      # @!attribute public_key
      #
      #   @return [String, nil]
      optional :public_key, String

      # @!attribute signature
      #
      #   @return [String, nil]
      optional :signature, String

      # @!attribute workspace_id
      #
      #   @return [String, nil]
      optional :workspace_id, String

      # @!method initialize(token: nil, expire_at: nil, policy: nil, public_key: nil, signature: nil, workspace_id: nil)
      #   @param token [String]
      #
      #   @param expire_at [Integer] Unix timestamp of expiry
      #
      #   @param policy [Autorender::Models::UploadGenerateTokenResponse::Policy]
      #
      #   @param public_key [String]
      #
      #   @param signature [String]
      #
      #   @param workspace_id [String]

      # @see Autorender::Models::UploadGenerateTokenResponse#policy
      class Policy < Autorender::Internal::Type::BaseModel
        # @!attribute allow_override
        #
        #   @return [Autorender::Models::UploadGenerateTokenResponse::Policy::AllowOverride, nil]
        optional :allow_override, -> { Autorender::Models::UploadGenerateTokenResponse::Policy::AllowOverride }

        # @!attribute folder
        #
        #   @return [String, nil]
        optional :folder, String

        # @!attribute max_file_size
        #
        #   @return [Integer, nil]
        optional :max_file_size, Integer

        # @!attribute tags
        #
        #   @return [Array<String>, nil]
        optional :tags, Autorender::Internal::Type::ArrayOf[String]

        # @!attribute transform
        #
        #   @return [String, nil]
        optional :transform, String, nil?: true

        # @!method initialize(allow_override: nil, folder: nil, max_file_size: nil, tags: nil, transform: nil)
        #   @param allow_override [Autorender::Models::UploadGenerateTokenResponse::Policy::AllowOverride]
        #   @param folder [String]
        #   @param max_file_size [Integer]
        #   @param tags [Array<String>]
        #   @param transform [String, nil]

        # @see Autorender::Models::UploadGenerateTokenResponse::Policy#allow_override
        class AllowOverride < Autorender::Internal::Type::BaseModel
          # @!attribute folder
          #
          #   @return [Boolean, nil]
          optional :folder, Autorender::Internal::Type::Boolean

          # @!attribute tags
          #
          #   @return [Boolean, nil]
          optional :tags, Autorender::Internal::Type::Boolean

          # @!attribute transform
          #
          #   @return [Boolean, nil]
          optional :transform, Autorender::Internal::Type::Boolean

          # @!method initialize(folder: nil, tags: nil, transform: nil)
          #   @param folder [Boolean]
          #   @param tags [Boolean]
          #   @param transform [Boolean]
        end
      end
    end
  end
end
