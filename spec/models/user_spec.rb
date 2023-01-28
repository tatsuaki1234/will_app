require 'rails_helper'

RSpec.describe User, type: :model do

  # before do
  #   @user = FactoryBot.build(:user)
  # end

  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
      # it 'nameとnicknameとemail、passwordとencrypted_password、day_of_birth、secret_keyが存在すれば登録できる' do
      #   expect(@user).to be_valid
      # end
    end

    context '新規登録できないとき' do
      it 'nameが空では登録できない' do
        user = User.new(name: "", nickname: 'testニックネーム', email: 'test@example', password: '000000', password_confirmation: '000000', day_of_birth: "1996/12/17", secret_key: "123test" )
        user.valid?
        expect(user.errors.full_messages).to include("名前(本名)を入力してください")
      end

      it 'emailが空では登録できない' do
        user = User.new(name: "test名前", nickname: 'testニックネーム', email: '', password: '000000', password_confirmation: '000000', day_of_birth: "1996/12/17", secret_key: "123test" )
        user.valid?
        expect(user.errors.full_messages).to include("Eメールを入力してください")
      end

    end
  end
end
