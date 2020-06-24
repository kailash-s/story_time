class UsersController < ApplicationController

    def show
        if current_user.admin?
            @users = User.all
        else
            redirect_to root_path
        end
    end
end
