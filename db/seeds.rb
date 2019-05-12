# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

transaction_type_list = [
	[1, "Débito", "inflow"],
	[2, "Boleto", "outflow"],
	[3, "Financiamento", "outflow"],
	[4, "Crédito", "inflow"],
	[5, "Recebimento Empréstimo", "inflow"],
	[6, "Vendas", "inflow"],
	[7, "Recebimento TED", "inflow"],
	[8, "Recebimento DOC", "inflow"],
	[9, "Aluguel", "outflow"]
]

transaction_type_list.each do |id, desc, operation|
  TransactionType.create(id: id, description: desc, operation: operation)
end