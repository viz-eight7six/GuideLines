class Photo < ApplicationRecord
  validates :user, :url, presence: true

  belongs_to :user
end
