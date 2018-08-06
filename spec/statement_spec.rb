# frozen_string_literal: true

require 'statement'

describe Statement do
  let(:statement) { Statement.new({}) }

  it 'can return an empty statement for no rentals' do
    expect(statement.output).to eq("Rental Record for Customer Name\nYou owe 0\nYou earned 0 frequent renter points")
  end

  it 'can return a statement when Barney & Friends has been rented for 1 day' do
    expect(Statement.new({ 'Barney & Friends' => 1 }).output).to eq("Rental Record for Customer Name\nBarney & Friends 1.5\nYou owe 1.5\nYou earned 1 frequent renter points")
  end

  it 'can return a statement when The Matrix has been rented for 1 day' do
    expect(Statement.new({ 'The Matrix' => 1 }).output).to eq("Rental Record for Customer Name\nThe Matrix 2.0\nYou owe 2.0\nYou earned 1 frequent renter points")
  end

  it 'can return a statement when Avengers: Infinity War has been rented for 1 day' do
    expect(Statement.new({ 'Avengers: Infinity War' => 1 }).output).to eq("Rental Record for Customer Name\nAvengers: Infinity War 3.0\nYou owe 3.0\nYou earned 1 frequent renter points")
  end

  it 'can return a statement when all three movies have been rented for 1 day' do
    expect(Statement.new({ 'Barney & Friends' => 1, 'The Matrix' => 1, 'Avengers: Infinity War' => 1 }).output).to eq("Rental Record for Customer Name\nBarney & Friends 1.5\nThe Matrix 2.0\nAvengers: Infinity War 3.0\nYou owe 6.5\nYou earned 3 frequent renter points")
  end
end
