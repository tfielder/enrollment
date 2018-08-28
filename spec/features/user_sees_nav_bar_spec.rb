require 'rails_helper'

describe 'as a user' do
  describe 'from the homepage ' do
    it 'shows link to all students and create new student' do
      student = Student.create(name: "Ron")

      visit students_path

      expect(page).to have_content("All Students")
      expect(page).to have_content("Create New Student")

      visit edit_student_path(student)

      expect(page).to have_content("All Students")
      expect(page).to have_content("Create New Student")

    end
  end
end