class TransactionType < ApplicationRecord
  has_many :transactions

  OPERATION_INFLOW = "inflow"
  OPERATION_OUTFLOW = "outflow"
end
