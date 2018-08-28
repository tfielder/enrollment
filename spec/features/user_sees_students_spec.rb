require 'rails_helper'

describe "As a user" do
  describe "When I visit /students/:id" do
    # it "shows the name of a student" do
    #   student = Student.new(name: "Turing")
    #
    #   visit student_path(student)
    #
    #   expect(page).to have_content(student.name)
    # end
  end
  describe "When I visit /students" do
    scenario "I see a list of all student names" do
      s1 = Student.new(name: "Turing")
      s2 = Student.new(name: "Kelly")

      visit students_path

      expect(page).to have_content(s1.name)
      expect(page).to have_content(s2.name)
    end
  end
end