import MySQLdb

    

#test = "192.168.10.1"
#test1 ="255.255.255.0"

#db = MySQLdb.connect("localhost", "root", "cdaisi", "carto")
#cursor = db.cursor()
#cursor.execute("INSERT INTO confip (ip, masque) VALUES ('"+test+"', '"+test1+"');")
#db.commit()
#def connectionclosedb():
#    db.close()


def execute(req):
	db = MySQLdb.connect("localhost", "root", "cdaisi", "carto")
	cursor = db.cursor()
	response = cursor.execute(req)	
	db.commit()
	db.close()
	return response
