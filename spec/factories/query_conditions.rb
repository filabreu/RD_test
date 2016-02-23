FactoryGirl.define do
  factory :query_condition do
    field 'age'
    condition "condition"
    matcher '='
    factory :query_condition_greater do
      matcher '>='
    end
    factory :query_condition_lesser do
      matcher '<='
    end
    factory :query_condition_not do
      matcher '<>'
    end
  end
end
