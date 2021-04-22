#!/usr/bin/env bash
os/Elexis3  -nl fr_CH -os linux -ws gtk -arch x86_64 -consoleLog -vmargs \
-Duser.language=fr -Duser.region=CH -Dfile.encoding=utf-8 \
-Dch.elexis.dbFlavor=h2 -Dch.elexis.dbSpec='jdbc:h2:/home/niklaus/elexis/h2_elexis_rcptt_fr/db;AUTO_SERVER=TRUE' \
-Dch.elexis.dbUser=sa -Dch.elexis.dbPw=  \
-Dch.elexis.firstMandantName=Mustermann -Dch.elexis.firstMandantPassword=elexisTest -Dch.elexis.firstMandantEmail=mmustermann@elexis.info \
-Dch.elexis.username=Mustermann -Dch.elexis.password=elexisTest
