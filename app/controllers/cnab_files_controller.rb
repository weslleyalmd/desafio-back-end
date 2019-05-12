class CnabFilesController < ActionController::Base

  def index
    file="#{Rails.root}/CNAB.txt"

    CNABParser.parse(file)
  end

end
