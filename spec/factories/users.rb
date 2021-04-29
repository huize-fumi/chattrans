# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { 'yamada' }
    email { 'test@gmail.com' }
    password { '123abc' }
    password_confirmation { '123abc' }
    post { 'test' }
  end
end
