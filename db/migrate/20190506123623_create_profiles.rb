class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :userName
      t.text :address
      t.string :birthDate
      t.string :email
      t.string :name
      t.string :password

      t.timestamps
    end
  end
end
