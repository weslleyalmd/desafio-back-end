class TransactionParser

  TRANSACTION_TYPE_LINE_POSITION = {start_at: 0, size: 1}
  DATE_LINE_POSITION = {start_at: 1, size: 8}
  AMOUNT_LINE_POSITION = {start_at: 9, size: 10}
  CARD_LINE_POSITION = {start_at: 30, size: 12}
  TIME_LINE_POSITION = {start_at: 42, size: 6}

  def self.parse(line, store)
    trans_type = line.slice(TRANSACTION_TYPE_LINE_POSITION[:start_at], TRANSACTION_TYPE_LINE_POSITION[:size])
    date       = line.slice(DATE_LINE_POSITION[:start_at], DATE_LINE_POSITION[:size])
    amount     = line.slice(AMOUNT_LINE_POSITION[:start_at], AMOUNT_LINE_POSITION[:size])
    card       = line.slice(CARD_LINE_POSITION[:start_at], CARD_LINE_POSITION[:size])
    time       = line.slice(TIME_LINE_POSITION[:start_at], TIME_LINE_POSITION[:size])

    Transaction.create(transaction_type_id: trans_type, date: date, amount: amount,
                       card: card, time: time, store_id: store.id)
  end
end