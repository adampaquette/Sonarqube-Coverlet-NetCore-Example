@echo off
dotnet sonarscanner begin /k:"Coverlet" /d:sonar.cs.opencover.reportsPaths=coverage.opencover.xml /d:sonar.coverage.exclusions="**Test*.cs" /d:sonar.verbose=true
dotnet clean
dotnet build Coverlet.sln
coverlet Coverlet.Ms.Tests\bin\Debug\netcoreapp2.2\Coverlet.Ms.Tests.dll --target "dotnet" --targetargs "test Coverlet.Ms.Tests\Coverlet.Ms.Tests.csproj --no-build" --format opencover
dotnet sonarscanner end
pause