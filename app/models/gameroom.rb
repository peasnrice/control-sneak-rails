class Gameroom < ApplicationRecord
    belongs_to :user, :foreign_key => 'host_id'
    has_many :gameroom_user_associations
    has_many :users, :through => :gameroom_user_associations
    has_many :gamewords
    validates :title, length: { maximum: 140 },
                                presence: true
end
