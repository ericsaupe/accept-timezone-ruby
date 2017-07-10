module AcceptTimezone
  class Railtie < Rails::Railtie
    initializer "accept_timezone.configure_rails_initialization" do |app|
      app.middleware.use AcceptTimezone::Middleware
    end
  end
end
