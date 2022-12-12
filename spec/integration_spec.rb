# require_relative "../lib/diary"
# require_relative "../lib/diary_entry"

# RSpec.describe "integration" do
#   context "when we add an entry to our diary" do
#     it "gets returned in a list" do
#       my_diary = Diary.new
#       my_entry_1 = DiaryEntry.new("My title_1", "my contents_1")
#       my_entry_2 = DiaryEntry.new("My title_2", "my contents_2")
#       my_diary.add(my_entry_1)
#       my_diary.add(my_entry_2)
#       expect(my_diary.all).to eq [my_entry_1,my_entry_2]
#     end
#   end

#   it "returns the word count of all diary entries" do
#     my_diary = Diary.new
#     my_entry_1 = DiaryEntry.new("My title_1", "my contents_1")
#     my_entry_2 = DiaryEntry.new("My title_2", "my contents_2")
#     my_diary.add(my_entry_1)
#     my_diary.add(my_entry_2)
#     expect(my_diary.count_words).to eq 4
#   end

#   describe "calculates the reading time for all entries" do
#     it "returns total reading time in minutes" do
#       my_diary = Diary.new
#       my_entry_1 = DiaryEntry.new("My title_1", "my contents_1 do")
#       my_entry_2 = DiaryEntry.new("My title_2", "my contents_2 do")
#       my_diary.add(my_entry_1)
#       my_diary.add(my_entry_2)
#       expect(my_diary.reading_time(60)).to eq 0.1
#     end
#   end

#   it "returns fail if reading time is 0" do
#     my_diary = Diary.new
#     my_entry_1 = DiaryEntry.new("My title_1", "my contents_1 do")
#     my_entry_2 = DiaryEntry.new("My title_2", "my contents_2 do")
#     my_diary.add(my_entry_1)
#     my_diary.add(my_entry_2)
#     expect{my_diary.reading_time(0)}.to raise_error "Can't enter a 0"
#   end

#   it "finds the best entry based on reading time" do
#     my_diary = Diary.new
#     my_entry_1 = DiaryEntry.new("My title_1", "my contents_1")
#     my_entry_2 = DiaryEntry.new("My title_2", "my contents_2 do this one is even longer")
#     my_entry_3 = DiaryEntry.new("My title_3", "my contents_2 do this one is even longer")
#     my_diary.add(my_entry_1)
#     my_diary.add(my_entry_2)
#     my_diary.add(my_entry_3)
#     expect(my_diary.find_best_entry_for_reading_time(2,1)).to eq "my contents_1"
#   end
# end