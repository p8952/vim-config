#!/usr/bin/env ruby

git_bundles = [
	'git://github.com/airblade/vim-gitgutter.git',
	'git://github.com/ervandew/supertab.git',
	'git://github.com/majutsushi/tagbar.git',
	'git://github.com/p8952/vim-colors-wombat.git',
	'git://github.com/scrooloose/nerdtree.git',
]

require 'fileutils'
require 'open-uri'

vim_dir = File.dirname(__FILE__)
bundles_dir = File.join(vim_dir, 'bundle')

FileUtils.mkdir(bundles_dir) unless File.directory?(bundles_dir)
FileUtils.cd(bundles_dir)
Dir["*"].each { |d| FileUtils.rm_rf d }

git_bundles.each do |url|
	dir = url.split('/').last.sub(/\.git$/, '')
	`git clone #{url} #{dir}`
	FileUtils.rm_rf(File.join(dir, ".git"))
end

vimrc = File.expand_path('~/.vimrc')
FileUtils.rm_f(vimrc)
FileUtils.ln_s(File.join(vim_dir, 'vimrc'), vimrc)
