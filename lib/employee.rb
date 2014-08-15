class Employee < ActiveRecord::Base
  belongs_to :division
  has_many :project

  def current_project
    Project.find_by current: true
  end

  def past_projects
    Project.where("current = ?", false)
  end
end
