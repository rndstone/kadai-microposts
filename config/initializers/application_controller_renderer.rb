# Be sure to restart your server when you modify this file.

# ActiveSupport::Reloader.to_prepare do
#   ApplicationController.renderer.defaults.merge!(
#     http_host: 'example.org',
#     https: false
#   )
# end
Rails.application.config.generators do |g|
  g.stylesheets false
  g.javascripts false
  g.helper false
  g.skip_routes true
end