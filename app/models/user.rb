class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
      
  has_many :children, dependent: :destroy
  accepts_nested_attributes_for :children, allow_destroy: true, reject_if: :all_blank

  # validates :email, :presence => true, :email => true
end
