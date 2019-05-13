require 'test_helper'

class TransactionParserTest < ActiveSupport::TestCase
  setup do
    @store = stores(:one)
    @line_to_parse = "5201903010000013200556418150633123****7687145607MARIA JOSEFINALOJA DO Ó - MATRIZ" 
  end

  test "parser" do
    transaction = TransactionParser.parse(@line_to_parse, @store)

    assert transaction.date == Date.parse("20190301")
    assert transaction.amount == 13200
    assert transaction.card == "3123****7687"
    assert transaction.time == "14:56:07"
    assert transaction.store_id == @store.id
  end
end