class AddAlldayToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :allday, :smallint
  end
end
