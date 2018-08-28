require 'rails_helper'

describe 'user visits students/:id/edit' do
  describe 'user sees form to edit student' do
    it 'allows you to enter new name' do
      student = Student.create(name: "Henry")

      visit edit_student_path(student)

      expect(page).to have_content("Name:")

      fill_in "student[name]", with: "Sal"
    end
  end
end



# As a user
# When I visit `/students/:id/edit`
# And I enter a new name
# And I click submit
# I am on the student show page
# And I can see that student's new name