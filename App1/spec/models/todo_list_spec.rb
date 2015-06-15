require 'rails_helper'

RSpec.describe TodoList, type: :model do
# COOL WE GAAN WAT TESTS SCHRIJVEN
	context ':title' do # we schrijven een context waar in the test zich plaats vinden
		it 'must not be nil' do # hier een test
			todo_list = described_class.create!
			expect(todo_list.title).to_not be_nil
		end # Deze test kijkt bijvoorbeeld of de waarde van :title na het creëren van de TodoList item niet nil is.
		it 'must not contain more than 265 characters'
	end
end
