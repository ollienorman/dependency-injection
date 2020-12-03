require 'exercise-1'

describe Note do
  describe "#display" do
    it "displays the formatted note" do
      noteformatter_double = double :noteformatter, format: "Title: Title\nbody"
      note = Note.new("Title", "body", noteformatter_double)
      expect(note.display).to eq "Title: Title\nbody"
    end
  end
end

describe NoteFormatter do
  describe "#format" do
    it "formats the note" do
      note_double = double :note, title: "Title", body: "body"
      expect(subject.format(note_double)).to eq "Title: Title\nbody"
    end
  end
end