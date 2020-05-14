class AddPlus1RsvpToResponse < ActiveRecord::Migration[6.0]
  def change
    add_column :responses, :plus1_rsvp, :string
  end
end
