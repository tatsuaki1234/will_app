class Article < ApplicationRecord
  belongs_to :user

  #空の投稿を保存できないようにする
  # validates :title, presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/, message: 'は漢字かひらがなかカタカナで入力して下さい。' }
  validates :title, presence: true
  validates :content, presence: true
  

  def self.search(search)
    if search != ""
      Article.where('title LIKE(?)', "%#{search}%")
    else
      Article.all
    end
  end
end
