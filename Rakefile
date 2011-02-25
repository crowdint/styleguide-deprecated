#require 'bundler'
#Bundler::GemHelper.install_tasks
#require 'rake'
#require 'rubygems'




##require 'rake/testtask'
##Rake::TestTask.new(:test) do |test|
##  test.libs << 'lib' << 'test'
##  test.pattern = 'test/**/test_*.rb'
##  test.verbose = true
##end

##require 'rubygems'


#Spec::Rake::SpecTask.new('spec') do |t|
#  t.spec_opts = ['--options', "spec/spec.opts"]
#  t.spec_files = FileList['spec/*_spec.rb']
#end


require 'bundler'
Bundler::GemHelper.install_tasks

require 'rspec/core/rake_task'

desc "Run all examples"
RSpec::Core::RakeTask.new(:spec) do |t| 
  t.rspec_path = 'rspec'
  t.rspec_opts = %w[--color]
end

task :default => :spec
