clear
set -x

mvn clean
mvn install

if (($? == 0))
then
# Remove Old Version
sshpass -p tomcat123 ssh tomcat@valvcshad001vm << EOF
rm -f /home/tomcat/apache-tomcat-9.0.0.M22/webapps/metric_services.war 2>/dev/null
rm -rf /home/tomcat/apache-tomcat-9.0.0.M22/webapps/metric_services 2>/dev/null
EOF

sshpass -p jetty123 ssh jetty@valvcshad001vm << EOF
rm -f /opt/jetty/webapps/metric_services.war 2>/dev/null
rm -rf /opt/jetty/webapps/metric_services 2>/dev/null
EOF
 
sshpass -p jetty123 sftp jetty@valvcshad001vm:/opt/jetty/webapps << EOF
put /Users/toddfaucheux/zips/java/metric_services/target/metric_services.war
EOF

sshpass -p tomcat123 sftp tomcat@valvcshad001vm:/home/tomcat/apache-tomcat-9.0.0.M22/webapps << EOF
put /Users/toddfaucheux/zips/java/metric_services/target/metric_services.war
EOF

   # mvn tomcat7:redeploy
   # mvn tomcat7:deploy
fi
