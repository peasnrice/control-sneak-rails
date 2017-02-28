class GamewordUserAssociation < ApplicationRecord
    belongs_to :gameword
    belongs_to :user
end
