class CreateUploads < ActiveRecord::Migration
  def self.up
    create_table :uploads do |t|
    	t.column :document_id, :integer, :null => false
    	t.column :key, :string, :null => false  
    end
  end

  def self.down
    drop_table :uploads
  end
end
