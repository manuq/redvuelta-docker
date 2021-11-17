FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

# Install Kolibri from PPA:
RUN apt-get update --yes && \
    apt-get install --yes \
        software-properties-common \
        dirmngr && \
    add-apt-repository --yes ppa:learningequality/kolibri && \
    apt-get update --yes && \
    apt-get install --yes kolibri

# Start Kolibri:
USER kolibri
CMD ["/usr/bin/kolibri", "start", "--port=8080", "--foreground"]
