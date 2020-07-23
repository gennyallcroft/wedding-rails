class UpdatedRsvpInfo < ActiveRecord::Migration[6.0]
  def change
    add_column :responses, :guest1_first_name, :string
    add_column :responses, :guest1_surname, :string
    add_column :responses, :guest1_rsvp, :string
    add_column :responses, :guest1_dietary_requirements, :string
    add_column :responses, :guest1_diet_details, :string
    add_column :responses, :guest2_first_name, :string
    add_column :responses, :guest2_surname, :string
    add_column :responses, :guest2_rsvp, :string
    add_column :responses, :guest2_dietary_requirements, :string
    add_column :responses, :guest2_diet_details, :string
    add_column :responses, :guest3_first_name, :string
    add_column :responses, :guest3_surname, :string
    add_column :responses, :guest3_rsvp, :string
    add_column :responses, :guest3_dietary_requirements, :string
    add_column :responses, :guest3_diet_details, :string
    add_column :responses, :guest4_first_name, :string
    add_column :responses, :guest4_surname, :string
    add_column :responses, :guest4_rsvp, :string
    add_column :responses, :guest4_dietary_requirements, :string
    add_column :responses, :guest4_diet_details, :string
  end
end
