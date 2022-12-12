require_relative "../lib/diary_entry"

RSpec.describe "diary_entry" do
  context "returns the title as a string" do
    it "returns the title as a string" do
      my_entry = DiaryEntry.new("My title", "my contents")
      expect(my_entry.title).to eq "My title"
    end
  end

  context "returns the contents as a string" do
    it "returns the contents as a string" do
      my_entry = DiaryEntry.new("My title", "My contents")
      expect(my_entry.contents).to eq "My contents"
    end
  end

  it "returns word count of entry as int" do
    my_entry = DiaryEntry.new("Title", "Words to be counted")
    expect(my_entry.count_words).to eq 4
  end

  it "returns a reading time as an int for minutes" do
    my_entry = DiaryEntry.new("Title", "time it takes to read this")
    expect(my_entry.reading_time(60)).to eq 0.1
  end
end