# module BusinessLogic
#   class Robot
#     COMPANY = 'Skynet'
#     DIRECTIVE = 'KILL'
#   end
# end

module BusinessLogic
  RSpec.describe "Robot" do
    # Only classes and modules support nested constants
    # Nested constants can only be transferred to a class
    let(:mock) { Class.new }
    
    it 'can transfer over constants with some configuration' do
      # stub_const("BusinessLogic::Robot", mock)
      # NameError - uninitialized constant BusinessLogic::Robot::COMPANY
      # expect(Robot::COMPANY).to eq('Skynet')
      
      # Constant can be referenced directly because the class is
      # nested inside the same module as the real class
      # stub_const requires a string
      stub_const("Robot", mock, transfer_nested_constants: true)
      expect(Robot::COMPANY).to eq('Skynet')
      expect(Robot::DIRECTIVE).to eq('KILL')
    end
  end
end