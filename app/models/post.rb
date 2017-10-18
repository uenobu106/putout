class Post < ApplicationRecord
  validates :title,:content,:source, presence: true

  belongs_to :user, optional: true
  has_many :comments,dependent: :destroy
end
