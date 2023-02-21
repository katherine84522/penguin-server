class CreatePenguins < ActiveRecord::Migration[7.0]
  def change
    create_table :penguins do |t|
      t.string :headacc
      t.string :bodyacc
      t.string :headColor
      t.string :bodyColor
      t.string :mouthColor

      t.timestamps
    end
  end
end
