require 'note'

describe Note do
   it "Returns a string 'TEST FILE' and then a new line 'This is a test'" do
     format_double = double :formatter, format: "Title: TEST FILE \n This is a test"
     note = Note.new("TEST FILE", "This is a test", format_double)
     expect(note.display).to eq "Title: TEST FILE \n This is a test"
   end
end
