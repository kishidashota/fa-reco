FactoryBot.define do

  factory :user do
    username              {"abe"}
    email                 {"kkk@gmail.com"}
    password              {"000000"}
    password_confirmation {"000000"}
    user_image            {"header_logo.png"}
  end

end