FactoryGirl.define do
  factory :query do
    operator 'AND'

    factory :query_or do
      operator 'OR'
    end
  end

end
