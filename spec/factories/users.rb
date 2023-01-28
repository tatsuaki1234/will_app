FactoryBot.define do
  factory :user do
    name                  {'test-name'}
    nickname              {'test-nickname'}
    email                 {Faker::Internet.free_email}
    password              {'123abc'}
    encrypted_password    {'123abc'}
    day_of_birth          {'1996/12/17'}
    secret_key            {'abc123'}
  end
end