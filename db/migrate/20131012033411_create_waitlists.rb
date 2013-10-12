class CreateWaitlists < ActiveRecord::Migration
  def change
    create_table :waitlists do |t|
			t.string :email_address
			t.string :gender
      t.timestamps
    end
  end
	add_index :email_address, unique: true
end
