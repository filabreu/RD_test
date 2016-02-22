require 'rails_helper'

RSpec.describe Contact, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  context "states" do
    it "should have 27 options" do
      expect(Contact.states.size).to eq(27)
    end
  end
end
