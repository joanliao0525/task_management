class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.datetime :start_at
      t.datetime :end_at
      t.integer :status
      t.string :position
      t.boolean :all_day
      t.string :url
      t.integer :priority
      
      t.timestamps
    end
  end
end
