class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  validates  :question_text, presence: true
  validates  :answer_text, presence: true
  has_many   :comments
  belongs_to :user
  belongs_to :subject
  has_one_attached :question_image
  has_one_attached :answer_image

  validates :subject_id,            numericality: { other_than: 1, message: "can't be blank" }

  def self.search(search)
    if search != ""
      Post.where('question_text LIKE(?)',"%#{search}%")
      Post.where('answer_text LIKE(?)',"%#{search}%")
    else
      Post.all
    end
  end
end