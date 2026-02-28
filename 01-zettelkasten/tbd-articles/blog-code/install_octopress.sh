#!/bin/bash

sudo apt-get install -y curl rbenv
curl -L https://get.rvm.io | bash -s stable --ruby
source ~/.rvm/scripts/rvm
rvm install 1.9.3
rvm use 1.9.3
rvm rubygems latest

rm -rf ~/blog
git clone git@github.com:JackonYang/jackonyang.github.com.git ~/blog
cd ~/blog

gem install bundler
gem install RedCloth
# If you use rbenv, rehash to be able to run the bundle command
rbenv rehash 
bundle install
rvm rvmrc warning ignore /home/jackonyang/blog/.rvmrc

rake setup_github_pages[git@github.com:JackonYang/jackonyang.github.com.git]

# error shooting
# https://rvm.io/integration/gnome-terminal/
