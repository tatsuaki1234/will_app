FactoryBot.define do
  factory :will do
    will_address          {'test-will_address'}
    content               {'test-content'}

    association :user

  end
end
