FROM mcr.microsoft.com/dotnet/sdk:6.0-jammy

RUN dotnet --version

RUN dotnet tool install --global docfx --version 2.60.0-preview.2
RUN dotnet tool list --global

RUN docfx -v

ENTRYPOINT [ "docfx" ]