FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
LABEL author=ethans
RUN apt-get update -y
COPY /var/lib/jenkins/workspace/msbuild_student/smswebapp/bin/Release/net8.0/publish/ .
WORKDIR /app
ENTRYPOINT ["dotnet", "smswebapp.dll"]