class CreatePages < ActiveRecord::Migration

    def self.up
	    create-table :pages do |t|
		    t.string :title, :null=> false
			t.text :content, :null=> true
			t.text :rendered_content, :null => true
			t.boolean :published, :default => false
			t.timestamps
	 end
	
	addindex :pages, :title
	 end
	
	  def self.down
	    drop_table :pages
	  end
	