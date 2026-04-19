# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Uploads#generate_token
    class UploadGenerateTokenResponse < Autorender::Internal::Type::BaseModel
      # @!attribute token
      #
      #   @return [String]
      required :token, String

      # @!attribute expire_at
      #
      #   @return [Integer]
      required :expire_at, Integer

      # @!attribute policy
      #
      #   @return [Autorender::Models::UploadGenerateTokenResponse::Policy]
      required :policy, -> { Autorender::Models::UploadGenerateTokenResponse::Policy }

      # @!attribute public_key
      #
      #   @return [String]
      required :public_key, String

      # @!attribute signature
      #
      #   @return [String]
      required :signature, String

      # @!attribute workspace_id
      #
      #   @return [String]
      required :workspace_id, String

      # @!method initialize(token:, expire_at:, policy:, public_key:, signature:, workspace_id:)
      #   Token generated
      #
      #   @param token [String]
      #   @param expire_at [Integer]
      #   @param policy [Autorender::Models::UploadGenerateTokenResponse::Policy]
      #   @param public_key [String]
      #   @param signature [String]
      #   @param workspace_id [String]

      # @see Autorender::Models::UploadGenerateTokenResponse#policy
      class Policy < Autorender::Internal::Type::BaseModel
        # @!attribute allow_override
        #
        #   @return [Autorender::Models::UploadGenerateTokenResponse::Policy::AllowOverride]
        required :allow_override, -> { Autorender::Models::UploadGenerateTokenResponse::Policy::AllowOverride }

        # @!attribute folder
        #
        #   @return [String]
        required :folder, String

        # @!attribute max_file_size
        #
        #   @return [Integer]
        required :max_file_size, Integer

        # @!attribute tags
        #
        #   @return [Array<String>]
        required :tags, Autorender::Internal::Type::ArrayOf[String]

        # @!method initialize(allow_override:, folder:, max_file_size:, tags:)
        #   @param allow_override [Autorender::Models::UploadGenerateTokenResponse::Policy::AllowOverride]
        #   @param folder [String]
        #   @param max_file_size [Integer]
        #   @param tags [Array<String>]

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

          # @!method initialize(folder: nil, tags: nil)
          #   @param folder [Boolean]
          #   @param tags [Boolean]
        end
      end
    end
  end
end
