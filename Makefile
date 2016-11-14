new:
	bundle check || bundle install

seed:
	rake db:reset
	rake db:seed

