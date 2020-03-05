class NoteTopic < ApplicationRecord
    belongs_to :notes
    belongs_to :topics
end
