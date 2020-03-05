class Topic < ApplicationRecord
    belongs_to :person
    has_many :note_topics
    has_many :notes, through: :note_topics
    validates :label, presence: true
    validates :label, uniqueness: true
end
