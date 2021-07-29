FROM quay.io/keycloak/keycloak:14.0.0

ARG WORK_DIR=/build
WORKDIR ${WORK_DIR}

COPY . ${WORK_DIR}/

RUN mkdir /opt/jboss/keycloak/themes/cwa && \
    mkdir /opt/jboss/keycloak/themes/quick-test && \
    cp -r /opt/jboss/keycloak/themes/base/* /opt/jboss/keycloak/themes/cwa/ && \
    cp -r ${WORK_DIR}/src/themes/cwa/login /opt/jboss/keycloak/themes/cwa/ && \
    cp -r ${WORK_DIR}/src/themes/cwa/account /opt/jboss/keycloak/themes/cwa/ && \
    cp -r /opt/jboss/keycloak/themes/base/* /opt/jboss/keycloak/themes/quick-test/ && \
    cp -r ${WORK_DIR}/src/themes/quick-test/login /opt/jboss/keycloak/themes/quick-test/ && \
    cp -r ${WORK_DIR}/src/themes/quick-test/account /opt/jboss/keycloak/themes/quick-test/ && \
    cp ${WORK_DIR}/src/standalone/configuration/standalone-ha.xml /opt/jboss/keycloak/standalone/configuration/standalone-ha.xml

EXPOSE 8080
EXPOSE 8443
EXPOSE 7080
EXPOSE 7443

ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]

CMD ["-b", "0.0.0.0"]
