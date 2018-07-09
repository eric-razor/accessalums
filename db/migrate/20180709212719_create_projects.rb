class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :url_link
      t.integer :student_id

      t.timestamps
    end
  end
end
