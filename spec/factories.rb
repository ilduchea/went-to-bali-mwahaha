require 'faker'

FactoryGirl.define do

  factory :user do
    name 'Qwerty Jr'
    email 'qwertyjr1@email.com'
    password 'password'
  end

  factory :admin, class: User do
    name 'Qwerty'
    email 'qwerty@email.com'
    password 'password'
    admin true
  end

  factory :product do
    name Faker::Lorem.word
    price rand(10...100)
    description Faker::Lorem.sentence(5, false, 0).chop
    image File.new("app/assets/images/image1.jpg")
  end

end
