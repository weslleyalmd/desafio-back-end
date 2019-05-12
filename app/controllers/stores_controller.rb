class StoresController < ApplicationController
  before_action :set_store, only: [:show, :destroy]

  def index
    @stores = Store.all
  end

  def show
  end

  def destroy
    @store.destroy
    respond_to do |format|
      format.html { redirect_to stores_url, notice: 'Store was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_store
      @store = Store.find(params[:id])
    end
end
