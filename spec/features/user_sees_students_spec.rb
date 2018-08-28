require 'rails_helper'

describe "As a user" do
  describe "When I visit /students" do
    scenario "I see a list of all student names" do
      s1 = Student.create(name: "Turing")
      s2 = Student.create(name: "Kelly")

      visit students_path

      expect(page).to have_content(s1.name)
      expect(page).to have_content(s2.name)
    end
    it "shows links to students" do
      s1 = Student.create(name: "Turing")
      s2 = Student.create(name: "Kelly")

      visit students_path

      click_link "Turing"

      expect(current_path).to eq(student_path(s1))
    end
  end
end