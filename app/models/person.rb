class Person < ApplicationRecord
    has_secure_password
    validates :username, presence: true
    validates :username, uniqueness: true
    validates_length_of :username, maximum: 10, too_many_words: 'Please choose a name with only one word', tokenizer: ->(str) { str.scan(/\w+/) }
     validates_length_of :password, minimum: 6, maximum: 12, too_many_words: 'Please choose a password with only one word', tokenizer: ->(str) { str.scan(/\w+/) }
   # validates :password_digest, numericality: {greater_than_or_equal_to: 6, less_than_or_equal_to: 12}
    

end
