class AddAttributesToNutritionist < ActiveRecord::Migration[7.1]
  def change
    add_column :nutritionists, :name, :string
    add_column :nutritionists, :phone, :string
    add_column :nutritionists, :academic_title, :string
  end
end
