module AcceptTimezone
  class Middleware
    def initialize app
      @app = app
    end

    def call env
      [@status, @headers, @response]
    end
  end
end
