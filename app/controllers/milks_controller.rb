class MilksController < ApplicationController
  def create
    @milk = Milk.new(milk_params)
    # matches /stash formatting of downcase
    @milk.milk_type.downcase!
    @milk.location = "home"
    @milk.exp_date = @milk.get_exp_date(@milk.milk_type, @milk.date)

    @milk.save!

    @milks = Milk.where.not(milk_type: "consumed").order(exp_date: "asc")

    # will need to tackle error handling later
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js # render milks/create.js.erb
    end
  end

  def update
    @milk = Milk.find(params[:id])
    @milk.update(milk_params)
    # matches /stash formatting of downcase
    @milk.milk_type.downcase!
    # recompute the expiration date based on the date of change
    @milk.exp_date = @milk.get_exp_date(@milk.milk_type, Time.now)

    @milk.save!

    @milks = Milk.where.not(milk_type: "consumed").order(exp_date: "asc")

    # will need to tackle error handling later
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js # render milks/update.js.erb
    end
  end

def destroy
  @milk = Milk.find(params[:id])
  @milk.destroy

  @milks = Milk.where.not(milk_type: "consumed").order(exp_date: "asc")


  respond_to do |format|
    format.html { redirect_to root_path }
    format.js # render milks/destroy.js.erb
  end
end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def milk_params
    params.require(:milk).permit(:milk_type, :date, :amount)
  end
end
