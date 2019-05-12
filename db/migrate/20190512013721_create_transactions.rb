class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.belongs_to :transaction_type, index: true
      t.integer :amount
      t.string :card
      t.date :date
      t.string :time
      t.belongs_to :store, index: true

      t.timestamps
    end
  end
end
