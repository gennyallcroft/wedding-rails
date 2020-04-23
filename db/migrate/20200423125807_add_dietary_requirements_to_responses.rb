class AddDietaryRequirementsToResponses < ActiveRecord::Migration[6.0]
  def change
    add_column :responses, :dietary_requirements, :string
  end
end
