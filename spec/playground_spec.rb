module Saveable
  USERNAME = 'admin'

  def save
    "Saved to database with user #{USERNAME}"
  end
end

class Transaction
  include Saveable
end

RSpec.describe Transaction do
  it 'stubs the constant' do
    stub_const("Saveable::USERNAME", 'bobby')
    expect(subject.save).to eq('Saved to database with user bobby')
  end
end

module BusinessLogic
  class Robot
    COMPANY = 'Skynet'
    DIRECTIVE = 'KILL'
  end
end

module BusinessLogic
  RSpec.describe Robot do
    let(:mock) { Class.new }
    
    it 'does not transfer over constants by default' do
      stub_const("BusinessLogic::Robot", mock)
      # Error
      # expect(Robot::COMPANY).to eq('Skynet')
    end
    
    it 'can transfer over constants' do
      stub_const("BusinessLogic::Robot", mock, transfer_nested_constants: true)
      expect(Robot::COMPANY).to eq('Skynet')
      expect(Robot::DIRECTIVE).to eq('KILL')
    end
    
  end
end