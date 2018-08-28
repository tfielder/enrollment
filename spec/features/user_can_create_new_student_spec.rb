require 'rails_helper'

describe 'user visits student/new' do
  describe 'user sees form to create student' do
    it 'shows form' do

      visit new_student_path

      expect(page).to have_content("Name:")

    end
    it 'can fill out form' do
      visit new_student_path

      fill_in "student[name]", with: "Sal"
      click_on "Submit"

      expect(current_path).to eq(student_path(@student))
      expect(page).to have_content("Sal")
    end
  end
end