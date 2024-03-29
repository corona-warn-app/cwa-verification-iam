ARG IAM_FLAVOUR=public
FROM quay.io/keycloak/keycloak:20.0.5 as base-image

# Enables Features for Admin Flavour of IAM Image
FROM base-image as builder-admin
ENV KC_FEATURES_ENABLED=admin2,admin-api

# Disable Features for Public Flavour of IAM Image
FROM base-image as builder-public
ENV KC_FEATURES_DISABLED=admin,admin2,admin-api

# hadolint ignore=DL3006
FROM builder-${IAM_FLAVOUR} as builder
WORKDIR /opt/keycloak
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=false
ENV KC_CACHE=ispn
ENV KC_CACHE_STACK=kubernetes
ENV KC_DB=postgres
COPY src/themes/cwa /opt/keycloak/themes/cwa
COPY src/themes/quick-test /opt/keycloak/themes/quick-test
COPY src/themes/quick-test-retirement /opt/keycloak/themes/quick-test-retirement
RUN /opt/keycloak/bin/kc.sh build

FROM base-image
COPY --from=builder /opt/keycloak/ /opt/keycloak/

EXPOSE 8443

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
CMD ["start", "--optimized"]
