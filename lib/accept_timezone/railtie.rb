module AcceptTimezone
  class Railtie < Rails::Railtie
    initializer "accept_timezone.configure_rails_initialization" do
      Rails.application.middleware.insert_before Rack::Sendfile, AcceptTimezone::Middleware
    end
  end
end
