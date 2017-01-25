class MilksController < ApplicationController
  def create
    @milk = Milk.new(milk_params)
    # matches /stash formatting of downcase
    @milk.milk_type.downcase!
    @milk.location = "home"
    @milk.exp_date = @milk.get_exp_date(@milk.milk_type, @milk.date)

    @milk.save!
    # will need to tackle error handling later
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js # render milks/create.js.erb
    end
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def milk_params
    params.require(:milk).permit(:milk_type, :date, :amount)
  end
end
