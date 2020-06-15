class ConfirmationsController < Devise::ConfirmationsController

    private
        def after_confirmation_path_for(resource_name, resource)
            sign_in(resource)
            new_child_path
        end

end
