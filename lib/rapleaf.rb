%w[ base64 cgi openssl digest/sha1 net/http builder rexml/document ostruct ].each { |f| require f }

# Require any lib files that we have bundled with this Ruby Gem in the lib/EC2 directory.
# Parts of the EC2 module and Base class are broken out into separate
# files for maintainability and are organized by the functional groupings defined
# in the EC2 API developers guide.
Dir[File.join(File.dirname(__FILE__), 'Rapleaf/**/*.rb')].sort.each { |lib| require lib }

module Rapleaf

  # API Constants
  API_HOST = 'api.rapleaf.com'
  API_PORT = 80
  API_VERSION = 'v2'

end