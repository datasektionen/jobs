class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name, :null => false
      t.string :description, :null => false
      t.integer :company_id, :null => false

      t.timestamps
    end
  end
end
