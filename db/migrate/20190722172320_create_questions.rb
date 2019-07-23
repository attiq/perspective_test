class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :description
      t.string :dimension
      t.string :direction
      t.string :meaning

      t.timestamps
    end
  end
end
