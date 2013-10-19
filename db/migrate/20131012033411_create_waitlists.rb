class CreateWaitlists < ActiveRecord::Migration
  def change
    create_table :waitlists do |t|
			t.string :email_address
			t.string :gender
			t.string :type
      t.timestamps
    end
    	add_index :waitlists, :email_address, unique: true
  end

end
