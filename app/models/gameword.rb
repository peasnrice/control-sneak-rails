class Gameword < ApplicationRecord
    belongs_to :gameroom
    belongs_to :sender, :class_name => 'user'
    belongs_to :recipient, :class_name => 'user'
    has_many :validities, :class_name => 'user'
    has_many :favourites, :class_name => 'user'
    
    has_many :gameword_user_associations
    has_many :users, :through => :gameword_user_associations
    
    validates :phrase, length: { maximum: 140 },
                                presence: true
    enum status: [:accepted, :rejected, :failed]
end
