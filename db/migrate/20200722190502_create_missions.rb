class CreateMissions < ActiveRecord::Migration[6.0]
  def change
    create_table :missions do |t|
      t.string :name
      t.string :date
      t.string :plan

      t.timestamps
    end
  end
end
