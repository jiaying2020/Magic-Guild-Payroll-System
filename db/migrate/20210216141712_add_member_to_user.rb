class AddMemberToUser < ActiveRecord::Migration[6.1]
  
    def change
      add_column :users, :name, :string
      add_column :users, :number, :string
      add_column :users, :role, :integer, default: 2
      add_column :users, :phone, :string

  end

end
