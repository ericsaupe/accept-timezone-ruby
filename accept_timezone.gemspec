Gem::Specification.new do |s|
  s.name        = 'accept_timezone'
  s.version     = '0.1.0'
  s.date        = '2017-07-10'
  s.summary     = "Use Accept-Timezone header to set Time.zone"
  s.description = "Use Accept-Timezone header to set Time.zone"
  s.authors     = ["Eric Saupe"]
  s.email       = 'ericsaupe@gmail.com'
  s.files       = ["lib/accept_timezone.rb", "lib/accept_timezone/application_controller.rb", "lib/accept_timezone/railtie.rb"]
  s.homepage    = 'https://github.com/ericsaupe/accept-timezone-ruby'
  s.license     = 'MIT'

  s.add_runtime_dependency "rails"
end
