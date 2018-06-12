FactoryBot.define do
  factory :person do
    first_name 'John'
    last_name 'Denver'

    trait :male do
      gender 'male'
    end

    factory :person_male, traits: [:male]
  end
end
