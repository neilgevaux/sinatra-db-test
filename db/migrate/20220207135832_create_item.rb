class CreateItem < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :content
      t.timestamps null: false
    end
  end
end
