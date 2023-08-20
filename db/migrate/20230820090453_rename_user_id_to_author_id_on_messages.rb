class RenameUserIdToAuthorIdOnMessages < ActiveRecord::Migration[7.0]
  def change
    rename_column :messages, :user_id, :author_id
  end
end
