class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.string :name
      t.text :text

      t.timestamps
    end
  end
end
