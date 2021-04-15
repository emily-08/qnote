class Genre < ApplicationRecord
  has_many :memos
  belongs_to :user

  validates :name, presence: true
end
