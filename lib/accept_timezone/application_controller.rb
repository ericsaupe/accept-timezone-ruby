module AcceptTimezone
  module ApplicationController
    extend ActiveSupport::Concern

    # note: don't specify included or ClassMethods if unused

    included do
      before_action :set_timezone
    end

    private

    def set_timezone
      timezone = request.headers.env['HTTP_ACCEPT_TIMEZONE']
      if timezone.present? && ActiveSupport::TimeZone[timezone].present?
        Time.zone = ActiveSupport::TimeZone[timezone]
      else
        Time.zone = ActiveSupport::TimeZone[Rails.application.config.time_zone]
      end
    end
  end
end
