class Question < ActiveRecord::Base
  validates :question, :text, presence: true
  validates :question, length: { minimum: 5, maximum: 255 }
  validates :text, length: { minimum: 60, maximum: 1000 }           
end
