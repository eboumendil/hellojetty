echo "JETTY_VERSION=7.0.2.v20100331
mkdir demo
cd demo
wget http://10.210.1.17:8080/job/build/lastSuccessfulBuild/artifact/HelloWorld.java
wget -U none http://repo1.maven.org/maven2/org/eclipse/jetty/aggregate/jetty-all/$JETTY_VERSION/jetty-all-$JETTY_VERSION.jar
wget -U none http://repo1.maven.org/maven2/javax/servlet/servlet-api/2.5/servlet-api-2.5.jar
javac -cp servlet-api-2.5.jar:jetty-all-$JETTY_VERSION.jar HelloWorld.java
nohup java -cp .:servlet-api-2.5.jar:jetty-all-$JETTY_VERSION.jar HelloWorld &" >> /etc/rc.local
