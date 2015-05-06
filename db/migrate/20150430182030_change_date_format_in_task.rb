class ChangeDateFormatInTask < ActiveRecord::Migration
  def change
  	change_column :tasks, :started, :datetime
  	change_column :tasks, :finished, :datetime
  end

  def down
  	change_column :tasks, :started, :date
  	change_column :tasks, :finished, :date
  end
end
