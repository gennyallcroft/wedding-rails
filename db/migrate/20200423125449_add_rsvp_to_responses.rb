class AddRsvpToResponses < ActiveRecord::Migration[6.0]
  def change
    add_column :responses, :rsvp, :string
  end
end
