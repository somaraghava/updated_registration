class CreateModels < ActiveRecord::Migration[5.0]
  def change
    create_table :models do |t|
      t.text :fname
      t.text :lname
      t.string :email
      t.text :address
    end
  end
end
