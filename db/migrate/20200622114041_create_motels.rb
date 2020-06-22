class CreateMotels < ActiveRecord::Migration[6.0]
  def change
    create_table :motels do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
