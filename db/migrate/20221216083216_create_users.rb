class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :email
      t.string :dob
      t.string :gender
      t.string :nick_name
      t.boolean :is_deleted , :default => false
      t.timestamps
    end
  end
end
