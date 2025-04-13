FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
WORKDIR /app

# Copy only necessary files
COPY smswebapp/bin/Release/net8.0/ .

ENTRYPOINT ["dotnet", "smswebapp.dll"]
