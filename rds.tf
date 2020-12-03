resource "aws_db_instance" "rds_instance"{
	allocated_storage = 20
	storage_type = "gp2"
	engine = "mysql"
	engine_version = "5.7"
	instance_class = "db.t2.micro"
	name = "mydb"
	username = "exam_user"
	password = "Colores123"
	parameter_group_name = "default.mysql5.7"
	skip_final_snapshot = true
}