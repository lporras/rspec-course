RSpec.describe 'doubles' do
  it "tests the student's knowledge of the course's content" do
    # Question 1
    db = double("Database Connection", connect: true, disconnect: 'Goodbye')
    expect(db.connect).to eq(true)
    expect(db.disconnect).to eq('Goodbye')

    # Question 2
    fs = double("File System")
    allow(fs).to receive(:read).and_return("Romeo and Juliet")
    allow(fs).to receive(:write).and_return(false)
  end
end