class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :started
      t.datetime :finished
      t.boolean :allday  	
      t.timestamps
    end
  end
end
