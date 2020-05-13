class CreatePlus1s < ActiveRecord::Migration[6.0]
  def change
    create_table :plus1s do |t|
      t.string :first_name
      t.string :surname
      t.string :rsvp
      t.string :dietary_requirements
      t.text :diet_details

      t.timestamps
    end
  end
end
