FactoryGirl.define do
  factory :query_condition do
    field 3
    condition "condition"
    matcher 0
    factory :query_condition_greater do
      matcher 1
    end
    factory :query_condition_lesser do
      matcher 2
    end
    factory :query_condition_not do
      matcher 3
    end
  end
end
