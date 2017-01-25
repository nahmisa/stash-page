class StashsController < ApplicationController
  def index
    @milk  = Milk.new
    @milks = Milk.where.not(milk_type: "consumed").order(exp_date: "asc")
  end
end
