require 'rails_helper'

RSpec.describe TodoList, type: :model do
# COOL WE GAAN WAT TESTS SCHRIJVEN
	context ':title' do
		it 'must not be nil' do # hier een test
			todo_list = described_class.create!
			expect(todo_list.title).to_not be_nil
		end
		it 'must not contain more than 265 characters' do
			todo_list = described_class.create! title: 'a'*257
      expect(todo_list.title.length).to eq 256
    end
    it 'must not be nil after save' do
			todo_list = described_class.create!
      todo_list.title = nil
      todo_list.save
      # ik laat dit falen om je te laten zien
			expect(todo_list.title).to_not be_nil
    end
	end
  context ':description' do
    it 'is valid?' do
      expect {
        described_class.create!
      }.to raise_error
    end
  end
end
