#############
# Variables #
#############

USER=$(git config --get user.name | awk -F ' ' '{print $1}')

#############
# Utilities #
#############

collaborator:
	git checkout -b $(USER)

new:
	bundle check || bundle install

seed:
	rake db:reset
	rake db:seed

