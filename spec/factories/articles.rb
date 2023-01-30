FactoryBot.define do
  factory :article do
    title                 {'test-article'}
    content               {'test-content'}

    association :user

  end
end
