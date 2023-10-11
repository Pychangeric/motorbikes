class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_one :user_profile
    has_many :bikes
    has_one :admin, dependent: :destroy

    attr_accessor :id_number, :phone_number, :full_names, :DOB, :location


    
end



