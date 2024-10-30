class CreateAuthors < ActiveRecord::Migration[7.2]
  def change
    create_table :authors do |t|
      t.string :name
      t.text :biography
      t.date :birthdate

      t.timestamps
    end
  end
end
