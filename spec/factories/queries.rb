FactoryGirl.define do
  factory :query do
    operator 'AND'

    factory :query_or do
      operator 'OR'
    end

    after(:create) do |query|
      create(:query_condition, query: query)
      create(:query_condition_email, query: query)
      create(:query_condition_age, query: query)
      create(:query_condition_state, query: query)
      create(:query_condition_work_role, query: query)
    end
  end

end
