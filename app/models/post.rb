class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  
  belongs_to :category
  belongs_to :user

  scope :search, ->(query) do
    return if query.blank?

    where('title LIKE ?', "%#{query.squish}%")
  end
end
