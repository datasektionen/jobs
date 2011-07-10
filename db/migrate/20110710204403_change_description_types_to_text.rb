class ChangeDescriptionTypesToText < ActiveRecord::Migration
  def change
    change_column :companies, :description, :text
    change_column :jobs, :description, :text
  end
end
