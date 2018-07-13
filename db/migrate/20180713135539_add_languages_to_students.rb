class AddLanguagesToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :langauge, :string
  end
end
