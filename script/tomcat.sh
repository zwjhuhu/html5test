export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/apr/lib
CATALINA_HOME=/usr/local/tomcat-7.0.42
CATALINA_BASE=$CATALINA_HOME
    cd $CATALINA_HOME
    ./bin/jsvc \
		-user www \
        -classpath $CATALINA_HOME/bin/bootstrap.jar:$CATALINA_HOME/bin/tomcat-juli.jar \
        -outfile $CATALINA_BASE/logs/catalina.out \
        -errfile $CATALINA_BASE/logs/catalina.err \
        -Dcatalina.home=$CATALINA_HOME \
        -Dcatalina.base=$CATALINA_BASE \
        -Djava.util.logging.manager=org.apache.juli.ClassLoaderLogManager \
        -Djava.util.logging.config.file=$CATALINA_BASE/conf/logging.properties \
        org.apache.catalina.startup.Bootstrap
