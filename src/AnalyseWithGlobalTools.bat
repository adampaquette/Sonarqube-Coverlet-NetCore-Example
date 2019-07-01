dotnet build-server shutdown
del coverage.opencover.xml
del coverage.opencover1.xml
pause
dotnet sonarscanner begin /k:"Coverlet" /d:sonar.cs.opencover.reportsPaths="coverage.opencover.xml" /d:sonar.coverage.exclusions="**Test*.cs" /d:sonar.verbose=true
pause
dotnet clean
pause
dotnet build
pause
coverlet Coverlet.Ms.Tests\bin\Debug\netcoreapp2.2\Coverlet.Ms.Tests.dll --target "dotnet" --targetargs "test Coverlet.Ms.Tests\Coverlet.Ms.Tests.csproj --no-build" --format opencover
REM CANT MERGE BECAUSE IT CRASH...
coverlet Coverlet.XUnit.Tests\bin\Debug\netcoreapp2.2\Coverlet.XUnit.Tests.dll --target "dotnet" --targetargs "test Coverlet.XUnit.Tests\Coverlet.XUnit.Tests.csproj --no-build" --format opencover --output coverage.opencover1.xml
pause
dotnet sonarscanner end
pause