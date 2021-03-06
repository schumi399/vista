class CreateUserRoles < ActiveRecord::Migration
  def up
    create_table :user_roles do |t|
      t.string :role_name
      t.string :privileges, :array => true, :default => []
    end
  end

  def down
    drop_table :user_roles
  end
end
