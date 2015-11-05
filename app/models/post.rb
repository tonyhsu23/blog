class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, :content, :author, presence: true
end
