# frozen_string_literal: true

require 'statement'

describe Statement do
  let(:statement) { Statement.new }

  it 'can return an empty statement for no rentals' do
    expect(statement.create).to eq("Rental Record for Customer Name\nYou owe 0\nYou earned 0 frequent renter points")
  end
end
