class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  validates :response, :respondent, presence: true
end
