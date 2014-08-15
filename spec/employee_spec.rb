require 'spec_helper'

describe Employee do
  it 'belongs to Division' do
    division1 = Division.create({name: "Engineering"})
    division2 = Division.create({name: "Accounting"})
    employee1 = Employee.create({name: "John Smith", division_id: division1.id})
    employee2 = Employee.create({name: "John Smith", division_id: division2.id})
    expect(employee1.division).to eq division1
  end

  it 'has many Projects' do
    employee1 = Employee.create({name: "John Smith"})
    project1 = Project.create({name: "Urban Airship account", employee_id: employee1.id})
    project2 = Project.create({name: "New Ruby Project", employee_id: employee1.id})
    expect(employee1.project).to eq [project1, project2]
  end

  it "allows an employee to see what project they are working on" do
    employee1 = Employee.create({name: "John Smith"})
    project1 = Project.create({name: "Urban Airship account", employee_id: employee1.id, current: true})
    project2 = Project.create({name: "New Ruby Project", employee_id: employee1.id})
    expect(employee1.current_project).to eq project1
  end

  it "allows an employee to see what projects they have worked on" do
    employee1 = Employee.create({name: "John Smith"})
    project1 = Project.create({name: "Urban Airship account", employee_id: employee1.id})
    project2 = Project.create({name: "New Ruby Project", employee_id: employee1.id, current: true})
    project3 = Project.create({name: "Alchemy JS Data Visualisation", employee_id: employee1.id})
    expect(employee1.past_projects).to eq [project1, project3]
  end
end
