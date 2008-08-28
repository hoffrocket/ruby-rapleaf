require 'base64'
require 'cgi'
require 'openssl'
require 'digest/sha1'
require 'net/http'
require 'builder'
require 'ostruct'

require 'rapleaf/rapleaf.rb'
require 'rapleaf/exceptions.rb'
require 'rapleaf/responses.rb'

module Rapleaf

  VERSION = '0.1.5'

  # API Constants
  API_HOST = 'api.rapleaf.com'
  API_PORT = 80
  API_VERSION = 'v2'

end

