## get java from trusted build
from dockerfile/java
maintainer Julien Lirochon, julien@lirochon.net

# install required packages
run apt-get update && apt-get install lsof

# install Neo4j from archive
run wget -O neo4j-community-2.2.0-M03-unix.tar.gz http://neo4j.com/artifact.php?name=neo4j-community-2.2.0-M03-unix.tar.gz
run tar xvzf neo4j-community-2.2.0-M03-unix.tar.gz

# update config
run echo "remote_shell_host=0.0.0.0" >> neo4j-community-2.2.0-M03/conf/neo4j.properties

# expose REST and shell server ports
expose 7474
expose 1337

## entrypoint
cmd ["neo4j-community-2.2.0-M03-unix/bin/neo4j", "start"]
