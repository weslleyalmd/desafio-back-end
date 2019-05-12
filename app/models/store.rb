class Store < ApplicationRecord

  has_many :transactions
  
  def self.www(parsed_store)
    store = Store.where("cpf = '#{parsed_store[:cpf]}'").first

    if store.blank?
      store = Store.create(parsed_store)
    end

    store
  end
end
