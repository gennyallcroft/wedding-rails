class AddResponseToPlus1 < ActiveRecord::Migration[6.0]
  def change
    add_reference :plus1s, :response, foreign_key: true
  end
end
