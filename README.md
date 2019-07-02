# Sonarqube-Coverlet-NetCore-Example
This serves as an example for integrating Sonarqube with Coverlet for a .Net Core project.

*Dependencies*

- .NET Coverlet global tool requires .NET Core 2.2 and above
- dotnet tool install --global dotnet-sonarscanner
- dotnet tool install --global coverlet.console
- dotnet tool install --global Cake.Tool

*How to run this example*

- Run AnalyseWithGlobalTools.bat in src folder Or
- Run AnalyseWithNugetTools.bat in src folder Or
- Run dotnet cake -target=CoreTests

*More information*

- https://github.com/tonerdo/coverlet
- https://docs.sonarqube.org/latest/analysis/scan/sonarscanner-for-msbuild/
