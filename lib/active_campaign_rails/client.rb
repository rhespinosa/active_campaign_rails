# frozen_string_literal: true

require 'ruby_http_client'
require_relative 'version'

module ActiveCampaignRails
  # Initialize the HTTP client
  class API
    attr_accessor :client
    attr_reader :request_headers, :host, :version
    # * *Args*    :
    #   - +api_key+ -> your ActiveCampaign API key
    #   - +host+ -> the base URL for the API
    #   - +request_headers+ -> any headers that you want to be globally applied
    #   - +version+ -> the version of the API you wish to access,
    #                  currently only "v3" is supported
    #
    def initialize(api_key: '', host: nil, request_headers: nil)
      @api_key             = api_key
      @host                = host
      @request_headers     = JSON.parse('
        {
          "Api-Token": "' + @api_key + '",
          "Accept": "application/json",
          "Content-Type": "application/json",
        }
      ')

      @request_headers = @request_headers.merge(request_headers) if request_headers
      @client = Client.new(host: "#{@host}/#{@version}",
                           request_headers: @request_headers)
    end
  end
end
