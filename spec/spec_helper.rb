require 'active_record'
require 'rspec'

require 'employee'
require 'division'
require 'project'

ActiveRecord::Base.establish_connection(YAML::load(File.open('./db/config.yml'))["test"])

RSpec.configure do |config|
  config.after(:each) do
    Employee.all.each { |worker| worker.destroy}
    Division.all.each { |office| office.destroy}
    Project.all.each { |task| task.destroy}
  end
end
