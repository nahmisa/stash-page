class MilksController < ApplicationController
  def create
    @milk = Milk.new(milk_params)
    @milk.location = "home"
    @milk.exp_date = Date.now()

    @milk.save!

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js # render milks/create.js.erb
    end
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def milk_params
    params.require(:milk).permit(:milk_type, :amount, :date)
  end
end
