class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :birthday, :datetime
    add_column :users, :gender, :string
    add_column :users, :works_for, :string
    add_column :users, :from_city, :string
    add_column :users, :from_state, :string
    add_column :users, :lives_in_city, :string
    add_column :users, :lives_in_state, :string
  end
end
