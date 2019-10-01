require 'rails_helper'

describe User do
  describe '#create' do
    it "is invalid without a username" do
      user = build(:user, username: nil)
      user.valid?
      expect(user.errors[:username]).to include("を入力してください")
    end
  end

  describe '#create' do
    it "is invalid without a email" do
     user = build(:user, email: nil)
     user.valid?
     expect(user.errors[:email]).to include("を入力してください")
    end
  end

  describe '#create' do
    it "is invalid without a password" do
     user = build(:user, password: nil)
     user.valid?
     expect(user.errors[:password]).to include("を入力してください")
    end
  end
end 