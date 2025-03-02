###  Verifying the Replica Set

docker exec -it mongo1 mongosh -u <admin user name> -p <admin password>  --eval "rs.status()"


### connection string:


mongodb://sa:Password123@127.0.10.1:27017,127.0.10.2:27017,127.0.10.3:27017/myDatabase?authSource=admin


	• sa: The username for authentication.
	• Password123: The password for authentication.
	• 127.0.10.1:27017,127.0.10.2:27017,127.0.10.3:27017: The IP addresses and ports of the MongoDB nodes.
	• myDatabase: The initial database to connect to.
	authSource=admin: Specifies the database that holds the user’s credentials.



On Windows, the hosts file is located at C:\Windows\System32\drivers\etc\hosts. Edit it with a text editor run as Administrator.

127.0.10.1 mongo-1
127.0.10.2 mongo-2
127.0.10.3 mongo-3
