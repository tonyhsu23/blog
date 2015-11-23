class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  belongs_to :user
  validates :title, :content, :author, presence: true
end
