class AddQuestionToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :question, :text
    add_column :posts, :interest, :text
    add_column :posts, :important, :text
    add_column :posts, :solution, :text
    add_column :posts, :start, :text
    add_column :posts, :end, :text
    add_column :posts, :different, :text
    add_column :posts, :most, :text
    add_column :posts, :agreement, :text
    add_column :posts, :intersting, :text
    add_column :posts, :sentence, :text
    add_column :posts, :heart, :text
    add_column :posts, :dull, :text
    add_column :posts, :difficult, :text
    add_column :posts, :titles, :text
    add_column :posts, :foreword, :text
    add_column :posts, :summary, :text
    add_column :posts, :chapter, :text
  end
end
