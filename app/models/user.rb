class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #アソシエーション
  has_many :articles
  has_many :wills

  #空の投稿を保存できないようにする
  validates :name, presence: true
  validates :nickname, presence: true
  validates :email, presence: true
  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze, message: 'は英字と数字の組み合わせで入力して下さい。' }
  validates :encrypted_password, presence: true
  validates :day_of_birth, presence: true
  validates :secret_key, presence: true

end
