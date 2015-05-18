class CreateCongoers < ActiveRecord::Migration
  def change
    create_table :congoers do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
