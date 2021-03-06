class CreateCvEntries < ActiveRecord::Migration
  def self.up
    create_table :cv_entries do |t|
      t.string :entry
      t.integer :category_cv_id
      t.string :class_name

      t.timestamps
    end
  end

  def self.down
    drop_table :cv_entries
  end
end
