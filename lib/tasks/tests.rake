if Rails.env.development? || Rails.env.test?
  require 'rspec/core/rake_task'

  spec_task = Rake::Task['spec']

  desc "Run 'unit' specs (all specs except features)"
  RSpec::Core::RakeTask.new('spec:units' => spec_task.prerequisites) do |t|
    t.rspec_opts = "--tag ~type:feature"
    t.verbose = false
  end

  task('spec:features').clear
  desc "Run 'feature' specs"
  RSpec::Core::RakeTask.new('spec:features' => spec_task.prerequisites) do |t|
    t.rspec_opts = "--tag type:feature"
    t.verbose = false
  end
end
