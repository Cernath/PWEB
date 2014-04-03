class CreateProfils < ActiveRecord::Migration
  def change
    create_table :profils do |t|
      t.string :nom
      t.string :description
      t.has_attached_file :cours
      t.timestamps
    end
  end
end
