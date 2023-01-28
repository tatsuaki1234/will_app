require 'rails_helper'

RSpec.describe User, type: :model do

  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
      it 'nameとnickname、email、passwordとencrypted_password、day_of_birth、secret_keyが存在すれば登録できる' do
        expect(@user).to be_valid
      end
    end

    context '新規登録できないとき' do
      it 'nameが空では登録できない' do
        @user.name = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("名前(本名)を入力してください")
      end

      it 'nicknameが空では登録できない' do
        @user.nickname = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("ニックネームを入力してください")
      end

      it 'emailが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Eメールを入力してください")
      end

      it 'passwordが空では登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードを入力してください")
      end

      it 'passwordとpassword_confirmationが不一致では登録できない' do
        # @user.email = ''
        # @user.valid?
        # expect(@user.errors.full_messages).to include("Eメールを入力してください")
      end

      it '生年月日がないと登録できない' do
        # @user.email = ''
        # @user.valid?
        # expect(@user.errors.full_messages).to include("Eメールを入力してください")
      end
    end
  end
end
