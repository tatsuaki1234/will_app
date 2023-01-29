require 'rails_helper'

RSpec.describe Article, type: :model do
  before do
    @article = FactoryBot.build(:article)
  end

  describe '記事新規投稿' do
    context '記事新規投稿できるとき' do
      it 'title、contentが存在すれば投稿できる' do
        expect(@article).to be_valid
      end

      context '記事投稿できないとき' do
        it 'titleが空では投稿できない' do
          @article.title = ''
          @article.valid?
          expect(@article.errors.full_messages).to include("タイトルを入力してください")
        end

        it 'contentが空では投稿できない' do
          @article.content = ''
          @article.valid?
          expect(@article.errors.full_messages).to include("記事内容を入力してください")
        end          
        
        it 'userが紐付いていなければ投稿できない' do
          @article.user = nil
          @article.valid?
          expect(@article.errors.full_messages).to include("ユーザーを入力してください")
        end          
      end
    end
  end
end
