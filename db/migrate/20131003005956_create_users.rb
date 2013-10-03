class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
			t.string :first_name
			t.string :last_name
			t.string :email_address

      t.string :password_digest
      t.string :auth_token
      t.string :password_reset_token

			t.string :date_of_birth
			t.string :mobile_number

			t.string :address
			t.string :address2
			t.string :zipcode
			t.string :country
			t.string :state
			t.string :city
			
      t.timestamps
    end
  end
end
