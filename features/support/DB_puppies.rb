require "active_record"
require "sqlite3"




@cucumber_db = SQLite3::Database.new("cucumber") #companies will have the DB already..
@cucumber_db.execute("create table paylist (IdNum, Gender, Jobcode, Salary, Birth, Hired)")

@cucumber_db.execute("insert into paylist values ('1639','F','TA1',42260,'26JUN70','28JAN91')")
@cucumber_db.execute("insert into paylist values ('1065','M','ME3',40090,'26MAR54','16OCT90')")
@cucumber_db.execute("insert into paylist values ('1066','M','ME4',58560,'16JAN55','07JAN92')")
@cucumber_db.execute("insert into paylist values ('1067','F','ME7',98050,'18DEC55','07FEB82')")
@cucumber_db.execute("insert into paylist values ('1068','F','ME3',18987,'28JUN58','07OCT87')")
@cucumber_db.execute("insert into paylist values ('1069','F','ME1',69890,'11JUL74','04OCT94')")



puts @cucumber_db.execute("Select IdNum from paylist")


@cucumber_db.execute("drop table paylist")

