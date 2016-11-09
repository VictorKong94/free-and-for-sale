# Variables
USER=$(git config --get user.name | awk -F ' ' '{print $1}')

collaborator:
    git checkout -b $USER

new:
    bundle check || bundle install

push:
    git push -u origin $USER

seed:
    rake db:reset
    rake db:seed

