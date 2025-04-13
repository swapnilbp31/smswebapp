# Use an official .NET runtime as a parent image
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
WORKDIR /app

# Copy the necessary files into the container
COPY /var/lib/jenkins/workspace/msbuild_student/smswebapp/bin/Release/net8.0/ .

# Specify the entry point for the application
ENTRYPOINT ["dotnet", "smswebapp.dll"]
