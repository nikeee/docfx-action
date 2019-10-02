FROM mono:latest

RUN apt update -yqq && \
    apt install -yqq unzip && \
    rm -rf /var/lib/apt/lists/*

ENV PATH="/docfx:${PATH}"
ENTRYPOINT [ "docfx" ]

ADD ./entrypoint.sh /usr/local/bin/docfx

ADD https://github.com/dotnet/docfx/releases/download/v2.45.1/docfx.zip /
RUN unzip docfx.zip -d /docfx && \
    rm docfx.zip
