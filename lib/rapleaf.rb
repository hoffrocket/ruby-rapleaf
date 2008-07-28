%w[ base64 cgi openssl digest/sha1 net/http builder ostruct ].each { |f| require f }

Dir[File.join(File.dirname(__FILE__), 'rapleaf/**/*.rb')].sort.each { |lib| require lib }

module Rapleaf

  # API Constants
  API_HOST = 'api.rapleaf.com'
  API_PORT = 80
  API_VERSION = 'v2'

end