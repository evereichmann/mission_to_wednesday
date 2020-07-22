class CreatePlanets < ActiveRecord::Migration[6.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.integer :scientist_id
      t.integer :mission_id

      t.timestamps
    end
  end
end
