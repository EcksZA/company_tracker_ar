require 'spec_helper'

describe Project do
  it "belongs to an employee" do
    employee1 = Employee.create({name: "John Smith"})
    employee2 = Employee.create({name: "Jane Doe"})
    project1 = Project.create({name: "Urban Airship account"})
    project2 = Project.create({name: "New Ruby Project"})
    project1.employees << employee1
    project2.employees << employee2
    expect(project1.employees).to eq [employee1]
    expect(project2.employees).to eq [employee2]
  end

  it "has many employees" do
    employee1 = Employee.create({name: "John Smith"})
    employee2 = Employee.create({name: "Jane Doe"})
    project1 = Project.create({name: "Urban Airship account"})
    project2 = Project.create({name: "New Ruby Project"})
    project2.employees << employee1
    project2.employees << employee2
    expect(project2.employees).to eq [employee1, employee2]
  end
end


