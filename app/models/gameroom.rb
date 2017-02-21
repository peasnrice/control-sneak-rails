class Gameroom < ApplicationRecord
    belongs_to :user
    validates :title, length: { maximum: 140 },
                                presence: true
end
