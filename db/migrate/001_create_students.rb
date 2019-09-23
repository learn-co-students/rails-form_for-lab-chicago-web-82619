class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.references :school_class, null: false, foreign_key: true

      t.timestamps null: false
    end
  end
end
