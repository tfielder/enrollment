require 'rails_helper'

describe "As a user" do
  describe "When I visit /students/:id" do
    it "shows the name of a student" do
      student = Student.create(name: "Turing")

      visit student_path(student.id)

      expect(page).to have_content(student.name)
    end
  end
end