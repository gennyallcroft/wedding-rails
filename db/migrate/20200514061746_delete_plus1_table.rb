class DeletePlus1Table < ActiveRecord::Migration[6.0]
  def change
    drop_table :plus1s
  end
end
