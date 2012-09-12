class RenameTitleToBodyForTableLinks < ActiveRecord::Migration
  def change
    rename_column :links, :title, :body
  end
end
