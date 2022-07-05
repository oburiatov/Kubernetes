#!/bin/sh
if [[ ! -f /opt/nifi/nifi-current/conf/nifi.properties || ! -d /opt/nifi/nifi-current/database_repository || ! -d /opt/nifi/nifi-current/flowfile_repository || ! -d /opt/nifi/nifi-current/content_repository ]]
then
  mkdir -p /opt/nifi/nifi-current/database_repository
  echo "Created dir /opt/nifi/nifi-current/database_repository"
  mkdir -p /opt/nifi/nifi-current/flowfile_repository
  echo "Created dir /opt/nifi/nifi-current/flowfile_repository"
  mkdir -p /opt/nifi/nifi-current/content_repository
  echo "Created dir /opt/nifi/nifi-current/content_repository"
  mkdir -p /opt/nifi/nifi-current/provenance_repository
  echo "Created dir /opt/nifi/nifi-current/provenance_repository"
  mkdir -p /opt/nifi/nifi-current/state
  echo "Created dir /opt/nifi/nifi-current/state"
  mkdir -p /opt/nifi/nifi-current/logs
  echo "Created dir /opt/nifi/nifi-current/logs"
  cp -r /tmp/nifi/scripts/ /opt/nifi/
  echo "Copied files from /tmp/nifi/scripts to /opt/nifi"
  cp -r /tmp/nifi/nifi-current/conf /opt/nifi/nifi-current/
  echo "Copied files from /tmp/nifi/nifi-current/conf to /opt/nifi/nifi-current"
  chown -R 1000:1000 /opt/nifi/scripts && chmod +x -R /opt/nifi/scripts
  echo "Changed recursively to 1000:1000 for /opt/nifi/scripts and changed chmod +x to /opt/nifi/scripts"
  chown -R 1000:1000 /opt/nifi/nifi-current
  echo "Changed recursively to 1000:1000 for /opt/nifi/nifi-current"
  mkdir -p /usr/hdf/current
  echo "Created dir /opt/nifi/nifi-current"
  cp -r /hdf/* /usr/hdf/current
  echo "Copied files from /hdf to /opt/nifi/nifi-current"
  chown -R 1000:1000 /usr/hdf/current && chmod +x -R /usr/hdf/current
  echo "Changed recursively to 1000:1000 for /usr/hdf/current"
  mkdir -p /usr/share/java
  echo "Created dir /usr/share/java"
  cp -r /jdbc/* /usr/share/java
  echo "Copied files from /jdbc to /usr/share/java"
  chown -R 1000:1000 /usr/share/java && chmod +x -R /usr/share/java
  echo "Changed recursively to 1000:1000 for /usr/share/java"
else    
  echo "Do nothing"
fi