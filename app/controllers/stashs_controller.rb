class StashsController < ApplicationController
  def index
    @milk  = Milk.new
    @milks = Milk.all
  end
end
