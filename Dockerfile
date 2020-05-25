FROM jboss/keycloak:10.0.1 as build

ARG WORK_DIR=/build
WORKDIR ${WORK_DIR}

COPY . ${WORK_DIR}/

RUN mkdir /opt/jboss/keycloak/themes/cwa
RUN cp -r /opt/jboss/keycloak/themes/base/* /opt/jboss/keycloak/themes/cwa/
RUN cd ${WORK_DIR}
RUN cp -r ${WORK_DIR}/src/themes/cwa/login /opt/jboss/keycloak/themes/cwa/

EXPOSE 8080
EXPOSE 8443

ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]

CMD ["-b", "0.0.0.0"]