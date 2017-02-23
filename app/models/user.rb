class User < ApplicationRecord
  # has_many :gamerooms, :foreign_key => 'host_id'
  has_many :gameroom_user_associations
  has_many :gamerooms, :through => :gameroom_user_associations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
