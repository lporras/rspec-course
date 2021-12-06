RSpec.describe 'regular hooks' do
  before(:context) do 
    puts 'A'
  end

  before(:example) do
    puts 'C'
  end

  after(:example) do
    puts 'D'
  end

  after(:context) do
    puts 'B'
  end

  it 'should compare strings' do
    expect('hello').to eq('hello')
  end

  it('should compare numbers') do
    expect(3.14).to eq(3.14)
  end
end