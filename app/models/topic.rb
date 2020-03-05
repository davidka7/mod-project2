class Topic < ApplicationRecord
    has_many :notes
    has_many :note_topics, through: :notes
    validates :label, presence: true
    validates :label, uniqueness: true
end
