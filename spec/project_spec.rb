require 'spec_helper'

describe Project do
  it "belongs to an employee" do
    employee1 = Employee.create({name: "John Smith"})
    employee2 = Employee.create({name: "Jane Doe"})
    project1 = Project.create({name: "Urban Airship account", employee_id: employee2.id})
    project2 = Project.create({name: "New Ruby Project", employee_id: employee1.id})
    expect(project1.employee).to eq employee2
  end
end
