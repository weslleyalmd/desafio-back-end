class StoreParser

  NAME_LINE_POSITION = {start_at: 62, size: 19}
  CPF_LINE_POSITION = {start_at: 19, size: 11}
  OWNER_LINE_POSITION = {start_at: 48 , size: 14}

  def self.parse(line)
    name  = line.slice(NAME_LINE_POSITION[:start_at], NAME_LINE_POSITION[:size]).strip
    cpf   = line.slice(CPF_LINE_POSITION[:start_at], CPF_LINE_POSITION[:size])
    owner = line.slice(OWNER_LINE_POSITION[:start_at], OWNER_LINE_POSITION[:size]).strip

    Store.check_store_exists({name: name, cpf: cpf, owner: owner})
  end
end