class AddArticleSource < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :source, :string, :default => false
  end
end
