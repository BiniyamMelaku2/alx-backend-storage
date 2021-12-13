# 0x01. NoSQL

## Resources
Read or watch:

* [NoSQL Databases Explained](https://riak.com/resources/nosql-databases/)
* [What is NoSQL ?](https://www.youtube.com/watch?v=qUV2j3XBRHc)
* [Building Your First Application: An Introduction to MongoDB]()
* [Introduction to MongoDB](https://www.studytonight.com/mongodb/introduction-to-mongodb)
* [An Introduction to MongoDB](https://www.mongodb.com/presentations/back-to-basics-introduction-to-mongodb)
* [MongoDB Tutorial 2 : Insert, Update, Remove, Query](https://www.youtube.com/watch?v=CB9G5Dvv-EE)
* [How To Install MongoDB in](https://tecadmin.net/install-mongodb-on-fedora/)
* [Aggregation](https://docs.mongodb.com/manual/aggregation/)
* [Introduction to MongoDB and Python](https://realpython.com/introduction-to-mongodb-and-python/)
* [mongo Shell Methods](https://docs.mongodb.com/manual/reference/method/)
* [The mongo Shell](https://docs.mongodb.com/manual/reference/program/mongo/)

## Tasks

## [0. List all databases](./0-list_databases)
Write a script that lists all databases in MongoDB.

```
@ubuntu:~/0x01$ cat 0-list_databases | mongo
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017
MongoDB server version: 3.6.3
admin        0.000GB
config       0.000GB
local        0.000GB
logs         0.005GB
bye
@ubuntu:~/0x01$
```

## [1. Create a database](./1-use_or_create_database)
Write a script that creates or uses the database `my_db`:
```
@ubuntu:~/0x01$ cat 1-use_or_create_database | mongo
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017
MongoDB server version: 3.6.3
switched to db my_db
bye
```

## [2. Insert document](./2-insert)
Write a script that inserts a document in the collection `school`:

* The document must have one attribute `name` with value “Holberton school”
* The database name will be passed as option of `mongo` command
```
@ubuntu:~/0x01$ cat 2-insert | mongo my_db
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017/my_db
MongoDB server version: 3.6.3
WriteResult({ "nInserted" : 1 })
bye
```

## [3. All documents](./3-all)
Write a script that lists all documents in the collection `school`:

* The database name will be passed as option of `mongo` command
```
@ubuntu:~/0x01$ cat 3-all | mongo my_db
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017/my_db
MongoDB server version: 3.6.3
{ "_id" : ObjectId("5a8fad532b69437b63252406"), "name" : "Holberton school" }
bye
@ubuntu:~/0x01$
```

## [4. All matches](./4-match)
Write a script lists all that documents with `name="Holberton school"` in the collection `school`:

* The database name will be passed as option of `mongo` command
```
@ubuntu:~/0x01$ cat 4-match | mongo my_db
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017/my_db
MongoDB server version: 3.6.3
{ "_id" : ObjectId("5a8fad532b69437b63252406"), "name" : "Holberton school" }
bye
```

## [5. Count](./5-count)
Write a script that displays the number of documents in the collection `school`:

* The database name will be passed as option of `mongo` command
```
@ubuntu:~/0x01$ cat 5-count | mongo my_db
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017/my_db
MongoDB server version: 3.6.3
1
bye
```

## [6. Update](./6-update)
Write a script that adds a new attribute to a document in the collection `school`:

* The script should update only document with `name="Holberton school"` (all of them)
* The update should add the attribute `address` with the value “972 Mission street”
* The database name will be passed as option of `mongo` command
```
@ubuntu:~/0x01$ cat 6-update | mongo my_db
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017/my_db
MongoDB server version: 3.6.3
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
bye
@ubuntu:~/0x01$ cat 4-match | mongo my_db
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017/my_db
MongoDB server version: 3.6.3
{ "_id" : ObjectId("5a8fad532b69437b63252406"), "name" : "Holberton school", "address" : "972 Mission street" }
bye
```

## [7. Delete by match](./7-delete)
Write a script that deletes all documents with `name="Holberton school"` in the collection `school`:

* The database name will be passed as option of `mongo` command
```
@ubuntu:~/0x01$ cat 7-delete | mongo my_db
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017/my_db
MongoDB server version: 3.6.3
{ "acknowledged" : true, "deletedCount" : 1 }
bye
@ubuntu:~/0x01$ cat 4-match | mongo my_db
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017/my_db
MongoDB server version: 3.6.3
bye
```

## [8. List all documents in Python](./8-all.py)
Write a Python function that lists all documents in a collection:

* Prototype: `def list_all(mongo_collection)`:
* Return an empty list if no document in the collection
* `mongo_collection` will be the `pymongo` collection object
```
@ubuntu:~/0x01$ ./8-main.py
[5a8f60cfd4321e1403ba7ab9] Holberton school
[5a8f60cfd4321e1403ba7aba] UCSD
```
