	class AddJobsToItems < ActiveRecord::Migration
  def change
    add_column :items, :employment_type, :string
    add_column :items, :salary, :string
    add_column :items, :recruiter, :boolean
    add_column :items, :internship, :boolean
    add_column :items, :non_profit, :boolean
    add_column :items, :telecommuting, :boolean
    add_column :items, :disability, :boolean
  end
end
