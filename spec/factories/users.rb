# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "Example User"
    email "user@example.org"
    password "Foobar123"
    password_confirmation password
  end
end
