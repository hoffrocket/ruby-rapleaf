%w[ base64 cgi openssl digest/sha1 net/http builder ostruct ].each do |f|
  require f
end

Dir[File.join(File.dirname(__FILE__), 'rapleaf/**/*.rb')].sort.each do |lib|
  require lib
end

module Rapleaf

  # API Constants
  API_HOST = 'api.rapleaf.com'
  API_PORT = 80
  API_VERSION = 'v2'

end