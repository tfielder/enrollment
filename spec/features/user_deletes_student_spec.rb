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

    end
  end
end



I see the students index
And that student's name is no longer on the page