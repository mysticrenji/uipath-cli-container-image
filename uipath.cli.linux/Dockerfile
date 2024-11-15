FROM alpine:3.18
ARG PACKAGE_VERSION=24.10.9050.17872
LABEL org.opencontainers.image.source https://github.com/mysticrenji/uipath-cli-container-image
RUN apk add dotnet6-runtime wget unzip bash\
&& wget https://pkgs.dev.azure.com/uipath/Public.Feeds/_apis/packaging/feeds/1c781268-d43d-45ab-9dfc-0151a1c740b7/nuget/packages/UiPath.CLI/versions/$PACKAGE_VERSION/content?api-version=7.0-preview.1 -O /tmp/uipath.cli.$PACKAGE_VERSION.zip\
&& unzip /tmp/uipath.cli.$PACKAGE_VERSION.zip \
&& apk del unzip wget 
ENTRYPOINT [ "dotnet","/tools/uipcli.dll"] 
