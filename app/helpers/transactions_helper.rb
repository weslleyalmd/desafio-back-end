module TransactionsHelper

  def handle_money(amount)
    opt = {:precision => 2, :separator => ',', :delimiter => '.'}
    value = number_with_precision(amount.to_f / 100, opt)
    "R$ #{value}"
  end

  def handle_total(transactions)
    total = 0

    transactions.each do |transaction|
      operation = transaction_type_operation transaction

      if operation == TransactionType::OPERATION_OUTFLOW
        total -= transaction.amount
      elsif operation == TransactionType::OPERATION_INFLOW
        total += transaction.amount
      end
    end

    handle_money total
  end

  def transaction_type_operation(transaction)
    transaction.transaction_type.operation 
  end

  def parse_date(date)
    date.strftime("%d/%m/%Y")
  end
end
