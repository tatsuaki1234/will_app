FactoryBot.define do
  factory :article do
    title                 {'test-item'}
    content               {'test-content'}

    association :user

  end
end
