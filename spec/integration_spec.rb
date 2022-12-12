require_relative "../lib/diary"
require_relative "../lib/diary_entry"

RSpec.describe "integration" do
  context "when we add an entry to our diary" do
    it "gets returned in a list" do
      my_diary = Diary.new
      my_entry = DiaryEntry.new("My title", "my contents")
      my_diary.add(my_entry)
      expect(my_diary.all).to eq [my_entry]
    end
  end
end