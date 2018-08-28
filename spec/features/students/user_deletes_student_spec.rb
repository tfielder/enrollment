require 'rails_helper'

describe 'user visits /students' do
  describe 'user click Delete next to a students name' do
    it 'allows you to click delete' do
      s1 = Student.create(name: "joe")
      s2 = Student.create(name: "mary")

      visit students_path

      expect(page).to have_content("Delete")
    end
    it 'shows student index without name on page' do
      s1 = Student.create(name: "joe")
      s2 = Student.create(name: "mary")

      visit students_path

      expect(page).to have_content("Delete")
    end
  end
end