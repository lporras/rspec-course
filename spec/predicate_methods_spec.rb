RSpec.describe 'predicate methods and predicate matchers' do
  it 'can be tested with Ruby methods' do
    result = 16 / 2
    expect(result.even?).to eq(true)
  end

  it 'can be tested with predicate matchers' do
    expect(16 / 2).to be_even
    expect(15).to be_odd
    expect(0).to be_zero
    expect([]).to be_empty
  end

  describe 0 do
    it { is_expected.to be_zero }
  end
end