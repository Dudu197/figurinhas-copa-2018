class CreateRepiteds < ActiveRecord::Migration[5.1]
  def change
    create_table :repiteds do |t|
      t.integer :number

      t.timestamps
    end
  end
end
