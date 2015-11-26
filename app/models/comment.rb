class Comment < ActiveRecord::Base
  belongs_to :post
  validates :response, presence: true
end
