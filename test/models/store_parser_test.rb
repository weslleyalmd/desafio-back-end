require 'test_helper'

class StoreParserTest < ActiveSupport::TestCase
  setup do
    @line_to_parse = "5201903010000013200556418150633123****7687145607MARIA JOSEFINALOJA DO Ó - MATRIZ" 
  end

  test "parser" do
    store = StoreParser.parse(@line_to_parse)
    assert store.name == "LOJA DO Ó - MATRIZ"
    assert store.cpf == "55641815063"
    assert store.owner == "MARIA JOSEFINA"
  end
end
