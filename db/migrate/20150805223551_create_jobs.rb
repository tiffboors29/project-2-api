class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.float :cost
      t.string :status

      t.timestamps null: false
    end
  end
end
