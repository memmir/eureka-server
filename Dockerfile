#For Java 17, try this
FROM openjdk:17
#Refer to Maven build -> finalName
ARG JAR_FILE=target/*.jar
# cd /opt/app
WORKDIR /opt/app
# cp target/spring-boot-web.jar /opt/app/app.jar
COPY ${JAR_FILE} app.jar

#java -jar /opt/app/app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]

#Bu komut docker deamon tarafından bir image oluşturulmasını sağlıyor:
#docker build -t eureka-server:0.0.1 .
# -t  ---> tagini belirrtiğimiz anlamına geliyor.
# 0.0.1 ---> verdiğimiz versiyon
# En sondaki nokta ise dizini belirtiyoruzç


#docker-compose -p stock-management -f eureka-server.yml up -d