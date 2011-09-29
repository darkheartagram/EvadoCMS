class CreateCategoryCvs < ActiveRecord::Migration
  def self.up
    create_table :category_cvs do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :category_cvs
  end
end
