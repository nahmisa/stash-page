class MilksController < ApplicationController
  def create
    @milk = Milk.new(milk_params)

    if @milk.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def milk_params
    params.require(:milk).permit(:milk_type, :amount, :location, :date)
  end
end
