# encoding: utf-8

class CreateMilks < ActiveRecord::Migration[5.0]
  def change
    create_table :milks do |t|
      t.string   :location
      t.integer  :amount
      t.datetime :exp_date
      t.datetime :date
      t.string   :milk_type
      t.timestamps
    end
  end
end
