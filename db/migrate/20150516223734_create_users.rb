class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.text :u_img
      t.text :location

      t.timestamps null: false
    end
  end
end
