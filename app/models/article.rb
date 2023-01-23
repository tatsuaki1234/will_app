class Article < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true

  belongs_to :user

  #空の投稿を保存できないようにする
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
