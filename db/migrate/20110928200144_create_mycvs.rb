class CreateMycvs < ActiveRecord::Migration
  def self.up
    create_table :mycvs do |t|
      t.string :content
      t.integer :user_id
      t.integer :type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :mycvs
  end
end
