class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :header
      t.text :body

      t.timestamps
    end
  end
end
