class Post < ApplicationRecord
  validates :title,:content, presence: true

  belongs_to :user, optional: true
  has_many :comments,dependent: :destroy
end
