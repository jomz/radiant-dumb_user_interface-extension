# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application_controller'
require 'radiant-dumb_user_interface-extension/version'
require 'radiant-dumb_user_interface-extension/pages_controller_extension'

class DumbUserInterfaceExtension < Radiant::Extension
  version RadiantDumbUserInterfaceExtension::VERSION
  description "Adds dumb_user_interface to Radiant."
  url "http://github.com/jomz/radiant-dumb_user_interface-extension"
  
  # extension_config do |config|
  #   config.gem 'some-awesome-gem
  #   config.after_initialize do
  #     run_something
  #   end
  # end

  # See your config/routes.rb file in this extension to define custom routes
  
  def activate
    Admin::PagesController.send :include, RadiantDumbUserInterfaceExtension::PagesControllerExtension
    # tab 'Content' do
    #   add_item "Dumb User Interface", "/admin/dumb_user_interface", :after => "Pages"
    # end
  end
end
