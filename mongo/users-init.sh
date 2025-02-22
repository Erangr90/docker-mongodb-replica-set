mongosh -u "$MONGO_INITDB_ROOT_USERNAME" -p "$MONGO_INITDB_ROOT_PASSWORD" <<EOF

admin = db.getSiblingDB("admin")
admin.createUser(
  {
    user: "adminUser",
    pwd: "adminPass",
    roles: [ { role: "userAdminAnyDatabase", db: "admin" } ]
  }
)
db.getSiblingDB("admin").auth("adminUser", "adminPass")

use SmartCartDb

db.getSiblingDB("admin").createUser(
  {
    "user" : "curdUser",
    "pwd" : "adminPass",
    roles: [ { "role" : "readWrite", "db" : "SmartCartDb" } ]
  }
)

EOF