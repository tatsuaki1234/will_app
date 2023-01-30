require 'rails_helper'

RSpec.describe Will, type: :model do
  before do
    @will = FactoryBot.build(:will)
  end

  describe '遺書新規登録' do
    context '遺書新規登録できるとき' do
      it 'will_address、contentが存在すれば登録できる' do
        expect(@will).to be_valid
      end

      context '遺書登録できないとき' do
        it 'will_addressが空では登録できない' do
          @will.will_address = ''
          @will.valid?
          expect(@will.errors.full_messages).to include("宛名を入力してください")
        end

        it 'contentが空では登録できない' do
          # @article.content = ''
          # @article.valid?
          # expect(@article.errors.full_messages).to include("記事内容を入力してください")
        end          
        
        it 'userが紐付いていなければ登録できない' do
          # @article.user = nil
          # @article.valid?
          # expect(@article.errors.full_messages).to include("ユーザーを入力してください")
        end          
      end
    end
  end
end
