require 'rails_helper'

describe Student do
  describe "validations" do
    context "invalid attributes" do
      it "is invalid without a name" do
        student = Student.new()
        expect(student).to be_invalid
      end

  #     it "is invalid without a level of interest" do
  #       job = Job.new(title: "Developer", description: "Wahoo", city: "Denver")
  #       expect(job).to be_invalid
  #     end
  #
  #     it "is invalid without a city" do
  #       job = Job.new(title: "Developer", description: "Wahoo", level_of_interest: 80)
  #       expect(job).to be_invalid
  #     end
    end
  #
    context "valid attributes" do
      # it "is valid with a name" do
      #   student = Student.new(name: "Turing")
      #   expect(student).to be_valid
      # end
    end
  # end
  #
  # describe "relationships" do
  #   it "belongs to a company" do
  #     job = Job.new(title: "Software", level_of_interest: 70, description: "Wahooo")
  #     expect(job).to respond_to(:company)
  #   end
  end
end
