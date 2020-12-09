class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  
  #パスワードの文字数制限を追加する
  validates :password, length: { in: 8..32 }
  
  #?下記と意味が重複してる？
  
  #パスワードをアルファベット、数字の混合のみ可能にする、正規表現
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])[a-z\d]{8,32}+\z/
  validates :password, presence: true, length: { minimum: 8, maximum: 32}, format: { with: VALID_PASSWORD_REGEX}
  
  #メールアドレスの正規表現を追加してください
  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}
  
  #名前の長さに制限を追加する
  validates :name, presence: true, length: { maximum: 15}
  
  has_secure_password
end
