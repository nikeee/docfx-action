FROM mcr.microsoft.com/dotnet/sdk:6.0-jammy

RUN dotnet --version

# Setting the path up to allow .NET tools
ENV PATH "$PATH:/root/.dotnet/tools"

RUN dotnet tool install --global docfx --version 2.60.0-preview.2

# Just checking things
RUN dotnet tool list --global
RUN docfx -v

ENTRYPOINT [ "docfx" ]