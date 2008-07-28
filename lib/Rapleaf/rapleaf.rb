module Rapleaf

  class Base

    def initialize(api_key, options = {})
      options = {
                  :api_host     => API_HOST,
                  :api_port     => API_PORT,
                  :api_version  => API_VERSION
                }.merge(options)

      @api_key  = api_key
      @host     = options[:api_host]
      @port     = options[:api_port]
      @version  = options[:api_version]
    end

    # This resource is used to retrieve information about a person, identified
    # using an email address or email address hash.
    # Example: person(:email => 'dummy@rapleaf.com')
    def person( opts = {} )

      raise ArgumentError, 'Email address must be provided' if opts[:email].nil? || opts[:email] == ''

      url = "http://#{@host}:#{@port}/#{@version}/person/#{opts[:email]}?api_key=#{@api_key}"
      resp = Net::HTTP.get_response(URI.parse(url))

      case resp.code
      when '200'
        return Response.parse(:xml => resp.body)
      when '202'
        raise PersonAccepted, 'This person is currently being searched. Check back shortly and we should have data.'
      when '400'
        raise PersonBadRequestInvalidEmail, 'Invalid email address.'
      when '401'
        raise AuthFailure, 'API key was not provided or is invalid.'
      when '403'
        raise ForbiddenQueryLimitExceeded, 'Your query limit has been exceeded. Contact developer@rapleaf.com if you would like to increase your limit.'
      when '500'
        raise InternalServerError, 'There was an unexpected error on our server. This should be very rare and if you see it please contact developer@rapleaf.com.'
      else
        raise Error, 'Unknown error'
      end
    end

    def abook( opts = {} )
      # TODO
    end

  end

end
