class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  
  belongs_to :category
  belongs_to :user

  
end
