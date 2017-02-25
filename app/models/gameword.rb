class Gameword < ApplicationRecord
    belongs_to :gameroom
    belongs_to :sender, :class_name => 'user'
    belongs_to :recipient, :class_name => 'user'
    has_many :validities, :class_name => 'user'
    has_many :favourites, :class_name => 'user'
    validates :phrase, length: { maximum: 140 },
                                presence: true
end
