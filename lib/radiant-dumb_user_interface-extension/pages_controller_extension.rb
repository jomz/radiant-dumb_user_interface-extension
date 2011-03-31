module RadiantDumbUserInterfaceExtension
  module PagesControllerExtension
    
    def self.included(base)
      base.before_filter :load_interface_js, :only => [:new, :edit]
    end
    
    def load_interface_js
      include_javascript  "admin/extensions/dumb_user_interface/dumb_interface" unless current_user.admin?
    end
  end
end