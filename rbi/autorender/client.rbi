# typed: strong

module Autorender
  class Client < Autorender::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(T.nilable(String)) }
    attr_reader :api_key

    # Upload files to your workspace
    sig { returns(Autorender::Resources::Uploads) }
    attr_reader :uploads

    # Manage files in your workspace
    sig { returns(Autorender::Resources::Files) }
    attr_reader :files

    # Manage folder structure
    sig { returns(Autorender::Resources::Folders) }
    attr_reader :folders

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        api_key: T.nilable(String),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      ).returns(T.attached_class)
    end
    def self.new(
      # Defaults to `ENV["AUTORENDER_API_KEY"]`
      api_key: ENV["AUTORENDER_API_KEY"],
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["AUTORENDER_BASE_URL"]`
      base_url: ENV["AUTORENDER_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: Autorender::Client::DEFAULT_MAX_RETRIES,
      timeout: Autorender::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: Autorender::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: Autorender::Client::DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
