class Guide < ApplicationRecord

  belongs_to :owner,
  classname: :User,
  primary_key: :id,
  foreign_key: :author_id

end
