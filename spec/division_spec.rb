require 'spec_helper'

describe Division do
  it "has many employees" do
    division1 = Division.create({name: "Engineering"})
    division2 = Division.create({name: "Accounting"})
    employee1 = Employee.create({name: "John Smith", division_id: division1.id})
    employee2 = Employee.create({name: "Jane Doe", division_id: division2.id})
    expect(division1.employee).to eq [employee1]
  end
end
