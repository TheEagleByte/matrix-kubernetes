export PG_CLUSTER_PRIMARY_POD=$(kubectl get pod -n synapse -o name -l postgres-operator.crunchydata.com/cluster=synapse-db,postgres-operator.crunchydata.com/role=master)

kubectl -n synapse port-forward "${PG_CLUSTER_PRIMARY_POD}" 5432:5432

export PG_CLUSTER_USER_SECRET_NAME=synapse-db-pguser-synapse-db

export PGPASSWORD=$(kubectl get secrets -n synapse "${PG_CLUSTER_USER_SECRET_NAME}" -o go-template='{{.data.password | base64decode}}')

export PGUSER=$(kubectl get secrets -n synapse "${PG_CLUSTER_USER_SECRET_NAME}" -o go-template='{{.data.user | base64decode}}')

export PGDATABASE=$(kubectl get secrets -n synapse "${PG_CLUSTER_USER_SECRET_NAME}" -o go-template='{{.data.dbname | base64decode}}')

psql -h localhost

postgres=# drop database "synapse-db";
DROP DATABASE
postgres=# CREATE DATABASE "synapse-db" with template=template0 owner="synapse-db" encoding=UTF8 locale='C';
CREATE DATABASE

postgres=# GRANT ALL PRIVILEGES ON DATABASE "synapse-db" to "synapse-db";
GRANT
postgres=# \l
                                       List of databases
    Name    |   Owner    | Encoding |   Collate   |    Ctype    |       Access privileges       
------------+------------+----------+-------------+-------------+-------------------------------
 postgres   | postgres   | UTF8     | en_US.utf-8 | en_US.utf-8 | 
 synapse-db | synapse-db | UTF8     | C           | C           | =Tc/"synapse-db"             +
            |            |          |             |             | "synapse-db"=CTc/"synapse-db"
 template0  | postgres   | UTF8     | en_US.utf-8 | en_US.utf-8 | =c/postgres                  +
            |            |          |             |             | postgres=CTc/postgres
 template1  | postgres   | UTF8     | en_US.utf-8 | en_US.utf-8 | =c/postgres                  +
            |            |          |             |             | postgres=CTc/postgres
(4 rows)