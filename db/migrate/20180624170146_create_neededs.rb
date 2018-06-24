class CreateNeededs < ActiveRecord::Migration[5.1]
  def change
    create_table :neededs do |t|
      t.integer :number

      t.timestamps
    end
  end
end
