#!/bin/sh
umask 002
DUMPS="/warehouse/g1k-03/sql_dumps"
CONF="/nfs/vertres01/conf"
SCRIPTS="/software/vertres/scripts"
BIN_EXT="/software/vertres/bin-external/update_pipeline"

export LD_LIBRARY_PATH=/software/badger/lib:/software/oracle_client-10.2.0/lib
export ORACLE_HOME=/software/oracle_client-10.2.0

date="`date +'%y%m%d'`"
mysqldump -u $VRTRACK_RW_USER -p$VRTRACK_PASSWORD -P$VRTRACK_PORT -h$VRTRACK_HOST vrtrack_mouse_wgs > "$DUMPS/vrtrack_mouse_wgs_$date.sql"

$BIN_EXT/update_pipeline.pl -s $CONF/mouse_wgs_studies -d vrtrack_mouse_wgs -v

$SCRIPTS/vrtrack_individual_supplier_name -d vrtrack_mouse_wgs