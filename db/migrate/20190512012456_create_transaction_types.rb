class CreateTransactionTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :transaction_types do |t|
      t.string :description
      t.string :operation

      t.timestamps
    end
  end
end
