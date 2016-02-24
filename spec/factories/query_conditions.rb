FactoryGirl.define do
  factory :query_condition do
    field 'full_name'
    matcher '='
    condition "John Doe"

    trait :email do
      field 'email'
      condition "johndoe@example.com"
    end

    trait :age do
      field 'age'
      condition 21
    end

    trait :state do
      field 'state'
      condition "SC"
    end

    trait :work_role do
      field 'work_role'
      condition "Director"
    end

    trait :greater do
      matcher '>='
    end

    trait :lesser do
      matcher '<='
    end

    trait :not do
      matcher '<>'
    end

    factory :query_condition_email, traits: [:email]
    factory :query_condition_age, traits: [:age]
    factory :query_condition_state, traits: [:state]
    factory :query_condition_work_role, traits: [:work_role]

  end
end
