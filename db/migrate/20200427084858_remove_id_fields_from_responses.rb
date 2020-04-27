class RemoveIdFieldsFromResponses < ActiveRecord::Migration[6.0]
  def change
    remove_column :responses, :user_id
    remove_column :responses, :response_id
  end
end
