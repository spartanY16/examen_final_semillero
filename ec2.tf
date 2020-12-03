resource "aws_instance" "cs2_instance"{
	ami = "ami-0a91cd140a1fc148a"
	instance_type = "t2.small"
	vpc_security_group_ids = [
		aws_security_group.intance_security_group.id
	]

	user_data = <<-EOF

	- wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && sudo dpkg -i erlang-solutions_2.0_all.deb
	- sudo apt-get update
	- sudo apt-get install esl-erlang
	- sudo apt-get install elixir
	- sudo apt install nodejs
	- sudo apt install npm
	- sudo apt install postgresql postgresql-contrib
		sudo -u postgres psql postgres
		\password postgres
		postgres
		postgres
		\q
	- mix archive.install hex phx_new 1.5.7
	- mix phx.new hello_phoenix_world
	- cd hello_phoenix_world
	- mix ecto.create
	- mix phx.server

	EOF
	
}