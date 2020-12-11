class Topic < ApplicationRecord
  validates :user_id, presence: true
  validates :description, persence: true
  validates :image, persence: true
end
