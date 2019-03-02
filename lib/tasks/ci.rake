namespace :ci do
  task run: %w(rubocop spec:units spec:features)
end
