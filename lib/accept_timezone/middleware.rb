module AcceptTimezone
  class Middleware
    def initialize app
      @app = app
    end

    def call env
      status, headers, response = @app.call(env)
      timezone = env['HTTP_ACCEPT_TIMEZONE']
      if timezone.present? && ActiveSupport::TimeZone[timezone].present?
        Time.zone = ActiveSupport::TimeZone[timezone]
      end
      [status, headers, response]
    end
  end
end
