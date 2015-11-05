class Comment < ActiveRecord::Base
  belongs_to :post
  validates :response, :respondent, presence: true
end
