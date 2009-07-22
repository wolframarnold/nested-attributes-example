class CreateParrots < ActiveRecord::Migration
  def self.up
    create_table :parrots do |t|
      t.belongs_to :pirate  # sets up :pirate_id
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :parrots
  end
end
