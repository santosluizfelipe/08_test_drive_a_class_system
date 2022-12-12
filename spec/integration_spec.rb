require_relative "../lib/diary"
require_relative "../lib/diary_entry"

RSpec.describe "integration" do
  context "when we add an entry to our diary" do
    it "gets returned in a list" do
      my_diary = Diary.new
      my_entry_1 = DiaryEntry.new("My title_1", "my contents_1")
      my_entry_2 = DiaryEntry.new("My title_2", "my contents_2")
      my_diary.add(my_entry_1)
      my_diary.add(my_entry_2)
      expect(my_diary.all).to eq [my_entry_1,my_entry_2]
    end
  end
end