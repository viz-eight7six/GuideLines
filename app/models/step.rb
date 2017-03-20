class Step < ApplicationRecord

  validates :title, :body, :guide, presence: true

  belongs_to :guide

end
