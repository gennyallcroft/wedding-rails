class AddPlus1InfoToResponse < ActiveRecord::Migration[6.0]
  def change
    add_column :responses, :plus1_first_name, :string
    add_column :responses, :plus1_surname, :string
    add_column :responses, :plus1_dietary_requirements, :string
    add_column :responses, :plus1_diet_details, :string
  end
end
