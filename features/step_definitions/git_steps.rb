def git(command)
  system("git #{command}")
end

def repo_path(repo)
  "tmp/" + repo
end

def remove_repo(repo)
  FileUtils.rm_rf repo_path(repo)
end

def create_repo(repo)
  FileUtils.mkdir repo_path(repo)
  Dir.chdir repo_path(repo)
  FileUtils.touch 'readme.txt'
  git 'init'
  git 'add -A'
  git 'commit -m "init"'
end

Given /^I have a branch called "(.*?)"$/ do |branch|
  git 'checkout -b ' + branch
  FileUtils.touch 'feature_file.txt'
  git 'add -A'
  git 'commit -m "init"'
  git 'checkout master'
end

Given /^I have a working repo$/ do
  remove_repo("git_repo")
  create_repo("git_repo")
end

Then /^I should be on a branch called "(.*?)"$/ do |branch|
  current_branch = `git rev-parse --abbrev-ref HEAD`.strip
  current_branch.should == branch
end

Given /^I have uncommited changes$/ do
  FileUtils.touch 'uncommited.txt'
  git "add -A"
end

Given /^I have untracked changes$/ do
  FileUtils.touch 'untracked.txt'
end
