class Note < ApplicationRecord
   
    has_many :topics
    has_many :note_topics, through: :topics
    belongs_to :size
    
    validates :description, :length => {
    :minimum   => 10,
    :maximum   => 300,
    
    :too_short => "must have at least %{10} words",
    :too_long  => "must have at most %{300} words"
  }
end
