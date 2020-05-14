class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.datetime :start_time
      t.string :title
      t.text :content
      t.integer :category_id
      t.integer :priority_id
   
      t.timestamps
    end
  end
end
