class CreateCours < ActiveRecord::Migration
  def change
    create_table :cours do |t|
      t.string :nom
      t.string :description
      t.timestamps
    end
  end
end
