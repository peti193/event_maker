class AddPicturesToEvent < ActiveRecord::Migration
  def change
    add_column :events, :pictures, :text
  end
end
