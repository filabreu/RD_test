require 'rails_helper'

RSpec.describe "contacts/index", type: :view do
  before(:each) do
    assign(:contacts, [
      create(:contact),
      create(:contact_jane_doe)
    ])
  end

  it "renders a list of contacts" do
    render
  end
end
