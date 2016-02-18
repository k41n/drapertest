class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.datetime :published_at
      t.references :author, index: true
      t.timestamps null: false
    end
  end
end
