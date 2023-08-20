class User < ApplicationRecord
  has_many :messages, foreign_key: :author_id
end
