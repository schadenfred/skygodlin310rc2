class CreateSubdomains < ActiveRecord::Migration
  def change
    create_table :subdomains do |t|
      t.string :name
      t.references :user

      t.timestamps
    end
    add_index :subdomains, :user_id
  end
end
