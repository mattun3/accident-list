class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.datetime :date, null: false
      t.string :place, null: false
      t.string :name, null: false
      t.text :symptom, null: false
      t.text :cause, null: false
      t.text :treatment, null: false
      t.timestamps
    end
  end
end
