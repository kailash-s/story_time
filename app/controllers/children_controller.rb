class ChildrenController < ApplicationController

    def new
        @child = Child.new
      end

    def create
        @child = Child.new(child_params)
        @child.user_id = current_user.id
        @child.save
        redirect_to thanks_path
    end

    private

    def child_params
        params.require(:child).permit(:first_name, :dob, :user_id)
    end

end
