require 'rails_helper'

RSpec.describe Query, type: :model do

  let!(:query) { create(:query) }
  let!(:query_or) { create(:query_or) }

  context "should build the query string from operator and associated query conditions" do
    it "shoukd build a query with AND operator" do
      expect(query.query_string).to eql "full_name = 'John Doe' AND email = 'johndoe@example.com' AND age = '21' AND state = 'SC' AND work_role = 'Director'"
    end
    it "should build a query with OR operator" do
      expect(query_or.query_string).to eql "full_name = 'John Doe' OR email = 'johndoe@example.com' OR age = '21' OR state = 'SC' OR work_role = 'Director'"
    end
  end
end
