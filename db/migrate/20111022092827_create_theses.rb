class CreateTheses < ActiveRecord::Migration
  def self.up
    create_table :theses do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end

  def self.down
    drop_table :theses
  end
end
