class CreateGoddesses < ActiveRecord::Migration[5.2]
  def change
    create_table :goddesses do |t|
      t.string :Name
      t.string :Pantheon
      t.string :Other
      t.string :Info

      t.timestamps
    end
  end
end
