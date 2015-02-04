Neo4j 2.2.0-M03
===============

Neo4j is a highly scalable, robust (fully ACID) native graph database. Neo4j is used in mission-critical apps by thousands of leading, startups, enterprises, and governments around the world.

How to
------

* Execute this command :

        docker run -i -t -d --name neo4j --cap-add=SYS_RESOURCE -p 7474:7474 jlirochon/neo4j-community-early-access

* You can then stop / start your container using `docker stop neo4j` and `docker start neo4j`
    
* Use your browser to visit [http://localhost:7474](http://localhost:7474)
