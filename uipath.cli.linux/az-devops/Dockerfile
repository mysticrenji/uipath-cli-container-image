FROM node:18-bullseye-slim
ARG PACKAGE_VERSION=24.10.9050.17872
ARG FEED_ID=1c781268-d43d-45ab-9dfc-0151a1c740b7
LABEL org.opencontainers.image.source https://github.com/mysticrenji/uipath-cli-container-image
RUN apt-get update \
    && apt-get install -y wget \
    && wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb \
    && dpkg -i packages-microsoft-prod.deb \
    && rm packages-microsoft-prod.deb \
    && apt-get update \
    && apt-get install -y dotnet-runtime-6.0 unzip jq curl\
    && wget https://pkgs.dev.azure.com/uipath/Public.Feeds/_apis/packaging/feeds/$FEED_ID/nuget/packages/UiPath.CLI/versions/$PACKAGE_VERSION/content?api-version=7.0-preview.1 -O /tmp/uipath.cli.$PACKAGE_VERSION.zip\
    && unzip /tmp/uipath.cli.$PACKAGE_VERSION.zip 
COPY uipathcli.sh /bin 
RUN chmod +x /bin/uipathcli.sh
