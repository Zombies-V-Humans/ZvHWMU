class AddTaggerToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :tagger, :string
  end
end
