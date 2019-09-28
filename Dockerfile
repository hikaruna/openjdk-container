FROM buildpack-deps:stretch-curl as build
RUN curl -SL https://download.java.net/java/GA/jdk13/5b8a42f3905b406298b72d750b6919f6/33/GPL/openjdk-13_linux-x64_bin.tar.gz \
    | tar -zxC /opt && mv /opt/jdk-13 /opt/jdk

FROM scratch
COPY --from=build /opt/jdk /opt/jdk
COPY --from=build /lib64/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2
COPY --from=build /lib/x86_64-linux-gnu /lib/x86_64-linux-gnu
ENV PATH $PATH:/opt/jdk/bin

WORKDIR /app
CMD [ "java", "--version" ]
