# frozen_string_literal: true

require 'rails_helper'
RSpec.describe User, type: :model do
  describe 'ユーザー新規登録' do
    before do
      @user = FactoryBot.build(:user)
    end

    context 'ユーザー新規登録ができる時' do
      it 'email,password,password_confirmation,name,psotが正しく入力されていれば登録できる' do
        expect(@user).to be_valid
      end
    end

    context 'ユーザー新規登録ができない時' do
      it 'nameが空では登録できないこと' do
        @user.name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Name can't be blank")
      end

      it 'emailが空では登録できないこと' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end

      it 'passwordがからでは登録できないこと' do
        @user.password = ''
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end

      it 'passwordが半角英語のみでは登録できないこと' do
        @user.password = 'aaaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is invalid')
      end

      it 'passwordが数字のみでは登録できないこと' do
        @user.password = '123456'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is invalid')
      end

      it 'passwordが全角英数字混合では登録できないこと' do
        @user.password = '１２３ａｂｃ'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is invalid')
      end

      it 'passwordとpassword_confirmationが不一致では登録できないこと' do
        @user.password = '123abc'
        @user.password_confirmation = '123abcd'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end

      it 'emailに@を含まない場合は登録できないこと' do
        @user.email = 'testgmail.com'
        @user.valid?
        expect(@user.errors.full_messages).to include('Email is invalid')
      end

      it '同じemailはすでに使用されていると登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Email has already been taken')
      end

      it 'postが空では登録できないこと' do
        @user.post = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Post can't be blank")
      end
    end
  end
end
