#See https://aka.ms/customizecontainer to learn how to customize your debug container and how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 8888

FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
ARG BUILD_CONFIGURATION=Release
WORKDIR /src
COPY ["HR.Admin.WebApi/HR.Admin.WebApi.csproj", "HR.Admin.WebApi/"]
COPY ["HR.CodeGenerator/HR.CodeGenerator.csproj", "HR.CodeGenerator/"]
COPY ["Infrastructure/HR.Infrastructure.csproj", "Infrastructure/"]
COPY ["HR.Common/HR.Common.csproj", "HR.Common/"]
COPY ["HR.ServiceCore/HR.ServiceCore.csproj", "HR.ServiceCore/"]
COPY ["HR.Repository/HR.Repository.csproj", "HR.Repository/"]
COPY ["HR.Model/HR.Model.csproj", "HR.Model/"]
COPY ["HR.Service/HR.Service.csproj", "HR.Service/"]
COPY ["HR.Tasks/HR.Tasks.csproj", "HR.Tasks/"]
RUN dotnet restore "./HR.Admin.WebApi/HR.Admin.WebApi.csproj"
COPY . .
WORKDIR "/src/HR.Admin.WebApi"
RUN dotnet build "./HR.Admin.WebApi.csproj" -c $BUILD_CONFIGURATION -o /app/build

FROM build AS publish
ARG BUILD_CONFIGURATION=Release
RUN dotnet publish "./HR.Admin.WebApi.csproj" -c $BUILD_CONFIGURATION -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "HR.Admin.WebApi.dll"]