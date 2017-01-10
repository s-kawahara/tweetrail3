class RenameFollowedIdColumnToRelationships < ActiveRecord::Migration[5.0]
  def change
    rename_column :relationships, :followed_id, :following_id
  end
end
