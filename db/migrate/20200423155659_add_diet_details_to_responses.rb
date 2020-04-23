class AddDietDetailsToResponses < ActiveRecord::Migration[6.0]
  def change
    add_column :responses, :diet_details, :string
  end
end
