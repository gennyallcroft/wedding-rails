class AddingNumberOfInviteesToResponses < ActiveRecord::Migration[6.0]
  def change
    add_column :responses, :number_of_guests, :integer
  end
end
