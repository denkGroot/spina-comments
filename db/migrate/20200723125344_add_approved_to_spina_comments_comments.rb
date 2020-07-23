class AddApprovedToSpinaCommentsComments < ActiveRecord::Migration[5.2]
  def change
    add_column :spina_comments_comments, :approved, :boolean, default: false, null: false
  end
end
