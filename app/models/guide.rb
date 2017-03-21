class Guide < ApplicationRecord

  validates :title, :body, :owner, presence: true

  # accepts_nested_attributes_for :steps

  belongs_to :owner,
  class_name: :User,
  primary_key: :id,
  foreign_key: :author_id

  has_many :comments

  has_many :steps

end
