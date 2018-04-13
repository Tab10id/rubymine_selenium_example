class CreateThing < ActiveRecord::Migration[5.2]
  def change
    create_table :things do |t|
      t.text :body
      t.string :title
    end
  end
end
