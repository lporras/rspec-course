RSpec.describe 'a random double' do
  it 'only allows defined methods to be invoked' do
    # stuntman = double("Mr. Danger", fall_off_ladder: 'Ouch', light_on_fire: true)
    # expect(stuntman.fall_off_ladder).to eq('Ouch')
    # expect(stuntman.light_on_fire).to eq(true)

    # stuntman = double("Mr. Danger")
    # allow(stuntman).to receive(:fall_off_ladder).and_return('Ouch')
    # expect(stuntman.fall_off_ladder).to eq('Ouch')

    stuntman = double("Mr. Danger")
    allow(stuntman).to receive_messages(fall_off_ladder: 'Ouch', light_on_fire: true)
    expect(stuntman.fall_off_ladder).to eq('Ouch')
    expect(stuntman.light_on_fire).to eq(true)
  end
end