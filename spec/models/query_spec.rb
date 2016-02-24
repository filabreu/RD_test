require 'rails_helper'

RSpec.describe Query, type: :model do

  let!(:query) { create(:query) }
  let!(:query_or) { create(:query_or) }

  context "should build the query string from operator and associated query conditions" do
    it "should build a query with AND operator" do
      create(:query_condition, query: query)
      create(:query_condition_email, query: query)
      create(:query_condition_age, query: query)
      create(:query_condition_state, query: query)
      create(:query_condition_work_role, query: query)
      expect(query.query_string).to eql "full_name = 'John Doe' AND email = 'johndoe@example.com' AND age = '21' AND state = 'SC' AND work_role = 'Director'"
    end
    it "should build a query with OR operator" do
      create(:query_condition, query: query_or)
      create(:query_condition_email, query: query_or)
      create(:query_condition_age, query: query_or)
      create(:query_condition_state, query: query_or)
      create(:query_condition_work_role, query: query_or)
      expect(query_or.query_string).to eql "full_name = 'John Doe' OR email = 'johndoe@example.com' OR age = '21' OR state = 'SC' OR work_role = 'Director'"
    end
  end

  context "should find Contact records from built query" do
    let!(:john_doe) { create(:contact) }
    let!(:jane_doe) { create(:contact_jane_doe) }
    let!(:john_smith) { create(:contact_john_smith) }

    it "should find Contact from SC state and age greater than 30" do
      create(:query_condition, query: query, field: 'state', condition: 23, matcher: '=')
      create(:query_condition, query: query, field: 'age', condition: 30, matcher: '>=')

      expect(query.query_string).to eql "state = '23' AND age >= '30'"
      expect(query.result).to include(jane_doe)
      expect(query.result).not_to include(john_doe)
      expect(query.result).not_to include(john_smith)
    end

    it "should find Contact with work_role Diretor de Marketing or from SP state" do
      create(:query_condition, query: query_or, field: 'work_role', condition: 'Diretor de Marketing', matcher: '=')
      create(:query_condition, query: query_or, field: 'state', condition: 24, matcher: '=')

      expect(query_or.query_string).to eql "work_role = 'Diretor de Marketing' OR state = '24'"
      expect(query_or.result).to include(john_doe)
      expect(query_or.result).to include(john_smith)
      expect(query_or.result).not_to include(jane_doe)
    end
  end
end
