@echo off
dotnet sonarscanner begin /k:"Coverlet" /d:sonar.cs.opencover.reportsPaths=coverage.opencover.xml /d:sonar.coverage.exclusions="**Test*.cs" /d:sonar.verbose=true
dotnet build Coverlet.sln
coverlet Coverlet.MsTests\bin\Debug\netcoreapp2.2\Coverlet.Ms.Tests.dll --target "dotnet" --targetargs "test Coverlet.MsTests\Coverlet.Ms.Tests.csproj --no-build" --format opencover
dotnet sonarscanner end
pause