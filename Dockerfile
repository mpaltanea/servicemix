FROM mkroli/servicemix
COPY ["ftp-blueprint.xml", "/deploy/ftp-blueprint.xml"]
RUN /opt/servicemix/bin/start; until /opt/servicemix/bin/client version; do sleep 5s; done; /opt/servicemix/bin/client feature:install camel-ftp; /opt/servicemix/bin/client feature:install activemq-web-console;  /opt/servicemix/bin/stop;

