class Post < ApplicationRecord
  validates :question_text, presence: true
  validates :answer_text, presence: true
  belongs_to :user
  has_many :comments

  def self.search(search)
    if search != ""
      Post.where('question_text LIKE(?)',"%#{search}%")
      Post.where('answer_text LIKE(?)',"%#{search}%")
    else
      Post.all
    end
  end
end
