class CreateVlogs < ActiveRecord::Migration[7.2]
  def change
    create_table :vlogs do |t|
      t.references :user, null: false, foreign_key: true
      t.references :blog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
