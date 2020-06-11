class PagesController < ApplicationController
    skip_before_action :authenticate_user!, :only => [:home, :breakdown, :faq]

    def home
    end

    def thanks
    end

    def breakdown
    end

    def faq
    end
end
