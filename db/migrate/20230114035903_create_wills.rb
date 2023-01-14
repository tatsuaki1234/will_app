class CreateWills < ActiveRecord::Migration[6.0]
  def change
    create_table :wills do |t|

      t.timestamps
    end
  end
end
