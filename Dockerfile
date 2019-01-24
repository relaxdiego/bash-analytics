FROM ubuntu:18.04

ARG workdir
ARG user

WORKDIR $workdir

USER $user
COPY ./script/lib/ /opt/bin
COPY ./script/tests/ /opt/tests
ENTRYPOINT ["/opt/bin/processor"]
