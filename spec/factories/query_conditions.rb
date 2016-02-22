FactoryGirl.define do
  factory :query_condition do
    field 1
    condition "MyString"
    matcher 1
    operator 1
    query :query
  end

end
