class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :article_id
      t.integer :user_id
      t.text :title
      t.text :content
      t.text :img_url

      t.timestamps null: false
    end
  end
end
