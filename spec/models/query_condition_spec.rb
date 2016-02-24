require 'rails_helper'

RSpec.describe QueryCondition, type: :model do
  let!(:query_condition) { build :query_condition }

  it "should build a query string from field, matcher and condition" do
    expect(query_condition.query_string).to eql "full_name = 'John Doe'"
  end

end
