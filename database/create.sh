#!/bin/bash
export PGPASSWORD='postgres1'
BASEDIR=$(dirname $0)
DATABASE=medical-db
#psql -U postgres -f "$BASEDIR/dropdb.sql" &&
#createdb -U postgres $DATABASE &&
#psql -U postgres -d $DATABASE -f "$BASEDIR/schema.sql" &&
#psql -U postgres -d $DATABASE -f "$BASEDIR/data.sql" &&
#psql -U postgres -d $DATABASE -f "$BASEDIR/user.sql"


export PGPASSWORD='ouwV9LuJ7St3UPu9oRlm'
BASEDIR=$(dirname $0)
DATABASE=railway

psql -h containers-us-west-197.railway.app -U postgres -p 5591 -d railway -f "$BASEDIR/dropdb.sql" &&
psql -h containers-us-west-197.railway.app -U postgres -p 5591 -d railway -f "$BASEDIR/schema.sql" &&
psql -h containers-us-west-197.railway.app -U postgres -p 5591 -d railway -f "$BASEDIR/data.sql" &&
psql -h containers-us-west-197.railway.app -U postgres -p 5591 -d railway -f "$BASEDIR/user.sql"

#From the railway application
#psql -h containers-us-west-197.railway.app -U postgres -p 5591 -d railway