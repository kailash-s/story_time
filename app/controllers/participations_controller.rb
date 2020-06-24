class ParticipationsController < ApplicationController
    def new
        @participation = Participation.new
    end

    def create
        @participation = Participation.new(participation_params)
        @participation.user_id = current_user.id
        @participation.save
        # redirect_to root_path
    end

    private

    def participation_params
        params.require(:participation).permit(:event_id, :user_id)
    end
end
