module StoresHelper
  def format_cpf(cpf)
    cpf.gsub(/(.{3})(.{3})(.{3})/, '\1.\2.\3-')
  end
end