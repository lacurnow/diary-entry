require 'diary_entry'

RSpec.describe DiaryEntry do
  it "returns title as a string" do
    entry = DiaryEntry.new("MyDiary", "MyDayToday")
    result = entry.title
    expect(result).to eq "MyDiary"
  end

  it "returns contents as a string" do
    entry = DiaryEntry.new("MyDiary", "MyDayToday")
    result = entry.contents
    expect(result).to eq "MyDayToday"
  end

  it "returns the number of words in the contents as an integer" do
    entry = DiaryEntry.new("MyDiary", "My Day Today")
    result = entry.count_words
    expect(result).to eq 3
  end
end