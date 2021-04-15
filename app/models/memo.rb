class Memo < ApplicationRecord
  belongs_to :user
  belongs_to :genre

  validates :title, presence: true
end