require_relative "../lib/diary"

RSpec.describe "diary" do
  context "returns empty list of entries" do
    it "returns empty" do
    my_diary= Diary.new
      expect(my_diary.all).to eq []
    end
  end

  
end