class Topic < ApplicationRecord
  validates :user_id, presence: true
  validates :description, presence: true
  validates :image, presence: true
  
  belongs_to :user
  
  mount_uploader :image, ImageUploader
  
  #いいねした場合にハートボタンの表示を消すようにコードを変更
  has_many :favorites
  has_many :favorite_users, through: :favorites, source: 'user'
end