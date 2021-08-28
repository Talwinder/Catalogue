FROM mcr.microsoft.com/dotnet/aspnet:3.1 AS base
WORKDIR /app
EXPOSE 8000 80
EXPOSE 8000 443

FROM mcr.microsoft.com/dotnet/sdk:3.1 AS build
WORKDIR /src1
COPY ["Catalogue.csproj", "src/Catalogue/"]
RUN dotnet restore "src\Catalogue\Catalogue.csproj"
COPY . .

RUN dotnet build "Catalogue.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "Catalogue.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "Catalogue.dll"]
