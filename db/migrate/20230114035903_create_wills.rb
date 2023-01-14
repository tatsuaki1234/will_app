class CreateWills < ActiveRecord::Migration[6.0]
  def change
    create_table :wills do |t|
      t.string :will_address
      t.text :content
      t.text :image
      t.integer :user_id
      t.timestamps
    end
  end
end
