require 'rails_helper'

describe 'when a user visits /students/:id/addresses/new' do
  describe 'fill in address fields' do
    it 'takes you to student show page' do
      
      visit (student)
    end
  end
end
#description
# And I fill in street with a street address
# And I fill in city with a city
# And I fill in state with a state
# And I fill in zip code with a zip code
# And I click submit
# I am taken to that student's show page
# And I see the description, street, city, state, and zip on that page