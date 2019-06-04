class AddNewcontntToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :title, :string
    add_column :posts, :what_content, :text
    add_column :posts, :what_problem, :text
  end
end
