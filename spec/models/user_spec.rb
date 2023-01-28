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

      it '重複したemailが存在する場合は登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include("Eメールはすでに存在します")
      end

      it 'メールアドレスは、@を含む必要があること。' do
        @user.email = 'test.com'
        @user.valid?
        expect(@user.errors.full_messages).to include("Eメールは不正な値です")
      end

      it 'passwordが空では登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードを入力してください")
      end

      it 'encrypted_passwordが空では登録できない' do
        @user.encrypted_password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("暗号化パスワードを入力してください")
      end

      it 'passwordとpassword_confirmationが不一致では登録できない' do
        @user.password = '123abc'
        @user.password_confirmation = '1234ab'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
      end

      it '生年月日が空では登録できない' do
        @user.day_of_birth = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("生年月日を入力してください")
      end

      it 'シークレットキーが空では登録できない' do
        @user.secret_key = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("シークレットキーを入力してください")
      end

    end
  end
end
