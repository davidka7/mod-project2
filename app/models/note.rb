class Note < ApplicationRecord
   
    has_many :note_topics
    has_many :topics, through: :note_topics
    # accepts_nested_attributes_for :topics
    def topics_attributes=(topic_attributes)
     topic_attributes.values.each do |topic_attribute|
        topic = Topic.find_or_create_by(topic_attribute)
        self.topics << topic
      end
    end
    belongs_to :size
    
    validates :description, :length => {
    :maximum   => 300
    
    
  }
end
