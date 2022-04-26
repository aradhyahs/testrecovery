
if [ "$1" == "-h" ]; then
  echo "Usage:"
  echo "For example"
  echo "./TestAS400Connectivity.sh 9.51.99.163 QSECOFR SERVICE1 /QSYS.LIB/SANOVI.LIB/DGREPINFO.PGM MIMIX,AGNAME 10,10,10"
  exit 0
fi



RUNTIME=$JAVA_HOME/bin/java

CLASSPATH=/opt/AS400Jar/jt400.jar:/opt/AS400Jar/AS400ProgramCallHelper.jar

MAIN=panaces.custom.lib.AS400ProgramCallHelper

#export $CLASSPATH

echo $CLASSPATH

$RUNTIME -classpath ${CLASSPATH} $MAIN  $1 $2 $3 $4 $5 $6 

echo "this is a new scprit"


