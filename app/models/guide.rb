class Guide < ApplicationRecord

  validates :title, :body, :owner, presence: true

  belongs_to :owner,
  class_name: :User,
  primary_key: :id,
  foreign_key: :author_id

end
