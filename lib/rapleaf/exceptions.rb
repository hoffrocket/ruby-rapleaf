module Rapleaf

  # CLIENT SIDE ERRORS

  # All of our errors are superclassed by Error < RuntimeError
  class Error < RuntimeError #:nodoc:
  end

  # A client side only argument error
  class ArgumentError < Error #:nodoc:
  end

  # SERVER SIDE ERRORS

  # GENERAL API
  # =============================================

  # 401 Unauthorized
  # API key was not provided or is invalid.
  class AuthFailure < Error #:nodoc:
  end

  # 403 Forbidden
  # Your query limit has been exceeded.
  class ForbiddenQueryLimitExceeded < Error #:nodoc:
  end

  # 500 Internal Server Error
  # There was an unexpected error on our server. This should be very
  # rare and if you see it please contact developer@rapleaf.com.
  class InternalServerError < Error #:nodoc:
  end


  # PERSON API
  # =============================================

  # 202 Accepted
  # This person is currently being searched. Check back shortly and we should have data.
  class PersonAccepted < Error #:nodoc:
  end

  # 400 Bad Request
  # Invalid email address.
  class PersonBadRequestInvalidEmail < Error #:nodoc:
  end

  # 404 Not Found
  # Only returned for lookup by hash. We do not have this email in our
  # system and are not able to create a person using a hash. If you would
  # like better results, consider supplying the unhashed email address.
  class PersonEmailHashNotFound < Error #:nodoc:
  end


  # ABOOK API
  # =============================================

  # TODO

end
