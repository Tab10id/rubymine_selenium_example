class CreateComment < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :body
      t.string :title
      t.boolean :active
      t.references :thing
    end
  end
end
