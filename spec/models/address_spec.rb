require 'rails_helper'

describe Address do
  describe "validations" do
    context "invalid attributes" do
      it "is invalid without a description, street, city, state, zip" do
        a1 = Address.create(street: "1234 Sesame", city: "Denver", state: "CO", zip: 80212)
        a2 = Address.create(description: "summer address", city: "Denver", state: "CO", zip: 80212)
        a3 = Address.create(description: "summer address", street: "1234 Sesame", state: "CO", zip: 80212)
        a4 = Address.create(description: "summer address", street: "1234 Sesame", city: "Denver", zip: 80212)
        a5 = Address.create(description: "summer address", street: "1234 Sesame", city: "Denver", state: "CO")

        expect(a1).to be_invalid
        expect(a2).to be_invalid
        expect(a3).to be_invalid
        expect(a4).to be_invalid
        expect(a5).to be_invalid
      end
    end
    context "valid attributes" do
      it "is valid with a attributes" do
        a1 = Address.create(description: "summer", street: "1234 Sesame", city: "Denver", state: "CO", zip: 80212)
        expect(a1).to be_valid
      end
    end

  end
  describe 'associations' do
    it 'should respond to students' do
      a1 = Address.create(description: "summer", street: "1234 Sesame", city: "Denver", state: "CO", zip: 80212)
      expect(a1).to respond_to(:student)
    end
  end
end
