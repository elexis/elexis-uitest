#!/bin/bash -v
logger "cron: $0 started"
cd `dirname $0`
# other useful definitions are:
# -DautExplicit=/opt/rm/elexis-master/elexis-3-core/ch.elexis.core.p2site/target/products/ch.elexis.core.application.ElexisApp-[classifier].zip
# -Dsuite2run=QuickTestSuite
# -DuseBranch=f11106
export cmd="mvn -V clean install -f $PWD/h2/pom.xml -Dlanguage=fr -DautExplicit=/home/niklaus/work -Dsuite2run=SmokeTestSetup"
export cmd="mvn -V clean install -f $PWD/h2/pom.xml -Dlanguage=fr"
$cmd 2>&1 | tee `basename --suffix=.sh $0`.log
# xvfb-run -a openbox --startup "$cmd" 2>&1 | tee `basename --suffix=.sh $0`.log
