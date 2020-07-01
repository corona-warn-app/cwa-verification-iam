FROM jboss/keycloak:10.0.1

ARG WORK_DIR=/build
WORKDIR ${WORK_DIR}

COPY . ${WORK_DIR}/

RUN mkdir /opt/jboss/keycloak/themes/cwa
RUN cp -r /opt/jboss/keycloak/themes/base/* /opt/jboss/keycloak/themes/cwa/
RUN cp -r ${WORK_DIR}/src/themes/cwa/login /opt/jboss/keycloak/themes/cwa/
RUN cp -r ${WORK_DIR}/src/themes/cwa/account /opt/jboss/keycloak/themes/cwa/
RUN cp ${WORK_DIR}/src/standalone/configuration/standalone-ha.xml /opt/jboss/keycloak/standalone/configuration/
RUN cp ${WORK_DIR}/src/standalone/configuration/keystores/test-only-https-keystore.jks /opt/jboss/keycloak/standalone/configuration/
RUN cp ${WORK_DIR}/src/opt/jboss/tools/cli/x509-keystore.cli /opt/jboss/tools/cli/

EXPOSE 8080
EXPOSE 8443
EXPOSE 7080
EXPOSE 7443

ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]

CMD ["-b", "0.0.0.0"]
