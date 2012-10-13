require 'rake/testtask'

Rake::TestTask.new do |t|
t.libs << ""
t.test_files = FileList['test*.rb']
t.verbose = false
t.warning = true
end
