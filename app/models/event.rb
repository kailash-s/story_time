class Event < ApplicationRecord
    has_many :participations
    has_many :users, through: :participations
    # accepts_nested_attributes_for :participations
end
