class CreatePuppies < ActiveRecord::Migration[6.0]
  def change
    create_table :puppies do |t|

      t.string :name
      t.integer :rating, default: 11

      t.timestamps
    end
  end
end
