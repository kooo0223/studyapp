class Post < ApplicationRecord
  validates :question_text, presence: true
  validates :answer_text, presence: true
  belongs_to :user
  has_many :comments
end
