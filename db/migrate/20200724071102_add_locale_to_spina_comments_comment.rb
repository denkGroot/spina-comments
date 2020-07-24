class AddLocaleToSpinaCommentsComment < ActiveRecord::Migration[5.2]
  def change
    add_column :spina_comments_comments, :locale, :string
  end
end
