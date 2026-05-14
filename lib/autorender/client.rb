# frozen_string_literal: true

module Autorender
  class Client < Autorender::Internal::Transport::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # @return [String, nil]
    attr_reader :api_key

    # Upload endpoints (API key required)
    # @return [Autorender::Resources::Uploads]
    attr_reader :uploads

    # File management endpoints (API key required)
    # @return [Autorender::Resources::Files]
    attr_reader :files

    # Folder management endpoints (API key required)
    # @return [Autorender::Resources::Folders]
    attr_reader :folders

    # Upload endpoints (API key required)
    # @return [Autorender::Resources::MultipartUploads]
    attr_reader :multipart_uploads

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      {"x-api-key" => @api_key}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param api_key [String, nil] Defaults to `ENV["AUTORENDER_API_KEY"]`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to `ENV["AUTORENDER_BASE_URL"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    def initialize(
      api_key: ENV["AUTORENDER_API_KEY"],
      base_url: ENV["AUTORENDER_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://upload.autorender.io"

      headers = {}
      custom_headers_env = ENV["AUTORENDER_CUSTOM_HEADERS"]
      unless custom_headers_env.nil?
        parsed = {}
        custom_headers_env.split("\n").each do |line|
          colon = line.index(":")
          unless colon.nil?
            parsed[line[0...colon].strip] = line[(colon + 1)..].strip
          end
        end
        headers = parsed.merge(headers)
      end

      @api_key = api_key&.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay,
        headers: headers
      )

      @uploads = Autorender::Resources::Uploads.new(client: self)
      @files = Autorender::Resources::Files.new(client: self)
      @folders = Autorender::Resources::Folders.new(client: self)
      @multipart_uploads = Autorender::Resources::MultipartUploads.new(client: self)
    end
  end
end
