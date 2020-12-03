			README
			
	Instalación
	
	- Descargar terraform del siguiente link https://www.terraform.io/downloads.html
	- Extraer la carpeta descargada
	- Crear una variable de entorno dentro de "PATH" con la ruta en donde se encuentra archivo extraído en el paso anterior
	- Dentro de la carpeta en la cual se clonó el repositorio ejecutamos
	
		terraform init
		
	- En unos momentos nos pedirá que ingresemos la palabra "yes"
	- Al finalizar la creación de todos los recursos, ingresamos a la maquina virtual de ubuntu por medio de nuestro key accesS y ejecutamos los siguientes comandos:
	
		wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && sudo dpkg -i erlang-solutions_2.0_all.deb
		sudo apt-get update
		sudo apt-get install esl-erlang
		sudo apt-get install elixir
		sudo apt install nodejs
		sudo apt install npm
		sudo apt install postgresql postgresql-contrib
		sudo -u postgres psql postgres
		\password postgres
		postgres
		postgres
		\q
		mix archive.install hex phx_new 1.5.7
		mix phx.new hello_phoenix_world
		cd hello_phoenix_world
		mix ecto.create
		mix phx.server
		
	- Al haber finalizado, ingresamos desde el puerto 4000 con la ip pública asignada a la instancia EC2 

		ejemplo: http://3.138.154.0:4000/
		
	- Después de haber verificado que el aplicativo se encuentre desplegado ejecutamos el siguiente comando para destruir todas las instancias creadas:
	
		terraform destroy
	
	