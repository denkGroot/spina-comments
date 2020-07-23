class CreateSpinaCommentsComments < ActiveRecord::Migration[5.2]
  def change
    create_table :spina_comments_comments do |t|
      t.string :commentable_type
      t.integer :commentable_id
      t.string :commenter_type
      t.integer :commenter_id
      t.text :body
      t.timestamps
    end

    add_index :spina_comments_comments, [:commentable_type, :commentable_id], name: "spina_comments_commentable_index"
    add_index :spina_comments_comments, [:commenter_type, :commenter_id], name: "spina_comments_commenter_index"
  end
end
