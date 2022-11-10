FROM quay.io/keycloak/keycloak:20.0.1 as builder

WORKDIR /opt/keycloak

ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=false

ENV KC_CACHE=ispn
ENV KC_CACHE_STACK=kubernetes

ENV KC_DB=postgres

COPY src/themes/cwa /opt/keycloak/themes/cwa
COPY src/themes/quick-test /opt/keycloak/themes/quick-test

RUN /opt/keycloak/bin/kc.sh build

FROM quay.io/keycloak/keycloak:20.0.1
COPY --from=builder /opt/keycloak/ /opt/keycloak/

EXPOSE 8443

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
CMD ["start", "--optimized"]
