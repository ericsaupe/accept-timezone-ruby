module AcceptTimezone
  class Railtie < Rails::Railtie
    initializer "accept_timezone.configure_rails_initialization" do
      ActiveSupport.on_load(:action_controller) do
        include AcceptTimezone::ApplicationController
      end
    end
  end
end
