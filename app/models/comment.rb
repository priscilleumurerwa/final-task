class Comment < ApplicationRecord
  belongs_to :family
  validates :content, presence: true
end
