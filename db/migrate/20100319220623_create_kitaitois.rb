class CreateKitaitois < ActiveRecord::Migration
  def self.up
    create_table :kitaitois do |t|
      t.string :nom
      t.string :prenom
      t.string :telephone
      t.string :email
      t.string :fonction

      t.timestamps
    end
  end

  def self.down
    drop_table :kitaitois
  end
end
