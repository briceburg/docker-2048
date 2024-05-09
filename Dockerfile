FROM busybox:musl as build
COPY src /build
WORKDIR /build
RUN cp -a static /dist

FROM pierrezemb/gostatic@sha256:7e5718f98f2172f7c8dffd152ef0b203873ba889c8d838b2e730484fc71f6acd
COPY --from=build /dist /srv/http
CMD ["-enable-health", "-log-level", "debug"]
