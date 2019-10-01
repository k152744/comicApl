FactoryBot.define do

  factory :user do
    username              {'テストユーザー'}
    email                 {'test1@exmple.com'}
    password              {"00000000"}
    password_confirmation {"00000000"}
  end

end 