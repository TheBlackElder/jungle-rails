class ModifyCreateUsers < ActiveRecord::Migration[6.1]
  def change
    change_table :users do |t|
      t.string :first_name
      t.string :last_name
    end
  end
end

