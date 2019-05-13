class CnabFilesController < ApplicationController

  def index
  end

  def upload_file  
    CNABParser.parse(params[:upload])
    redirect_to "/", notice: 'Arquivo carregado com sucesso!'
  # rescue
  #   redirect_to "/", notice: 'Erro ao processar arquivo.'
  end
end
