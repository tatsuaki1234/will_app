class Will < ApplicationRecord
  # validates :title, presence: true
  # validates :content, presence: true

  belongs_to :user

  #空の投稿を保存できないようにする
  validates :will_address, presence: true
  validates :content, presence: true
end
