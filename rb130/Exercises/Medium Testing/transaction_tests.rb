require 'minitest/autorun'
require_relative 'transaction'
require_relative 'cash_register'

class TransactionTest < Minitest::Test

  def test_prompt_for_payment
    item_cost = 20
    transaction = Transaction.new(item_cost)
    input = StringIO.new('20\n')
    output = StringIO.new
    transaction.prompt_for_payment(input: input, output: output)
    assert_equal 20, transaction.amount_paid
  end
end