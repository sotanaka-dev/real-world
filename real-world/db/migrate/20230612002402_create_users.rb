class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email, null: false, index: { unique: true }
      t.string :password_digest
      t.string :username, null: false, index: { unique: true }
      t.text :bio
      t.string :image

      t.timestamps
    end
  end
end
