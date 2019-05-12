json.extract! transaction, :id, :type, :date, :amount, :card, :time, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
