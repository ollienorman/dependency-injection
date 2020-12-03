require 'exercise-2'

describe Diary do
  describe "#add" do
    it "adds a new entry" do
      entry_double = double :entry, title: "Title", body: "body"
      entry_class_double = double :entry_class, new: entry_double
      diary = Diary.new(entry_class_double)
      diary.add("Title", "body")
      expect(diary.index).to eq "Title"
    end 
  end
end
