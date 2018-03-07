class AddEnrollmentNumberFullNameBranchContactNumberSemesterToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :enrollment_number, :string
    add_column :users, :full_name, :text
    add_column :users, :branch, :text
    add_column :users, :contact_number, :string
    add_column :users, :semester, :string
  end
end
