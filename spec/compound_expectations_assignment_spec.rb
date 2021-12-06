RSpec.describe 'compound assignments' do
  describe 'firetruck' do
    it 'has two substrings' do
      expect(subject).to start_with('fire').and end_with('truck')
    end
  end

  describe 20 do
    it 'is even and responds to the times method' do
      expect(subject).to be_even.and respond_to(:times)
    end
  end

  describe [4, 8, 15, 16, 23, 42] do
    it 'includes and excludes values' do
      expect(subject).to include(42).and start_with(4, 8, 15)
    end
  end
end
