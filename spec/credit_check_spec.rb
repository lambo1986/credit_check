require 'rspec'
require './lib/bank'
require './lib/credit_check'

RSpec.describe "credit check" do
  it "checks if the credit card is valid" do
    card_number = "5541808923795240"

    result = is_valid?(card_number)

    expect(result).to be true
  end
end
