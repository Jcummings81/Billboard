class Song < ApplicationRecord
    belongs_to :board 
    belongs_to :artist
end
