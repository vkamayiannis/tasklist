class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.date :started
      t.date :finished

      t.timestamps
    end
  end
end
