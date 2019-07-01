dotnet build-server shutdown
pause
dotnet sonarscanner begin /k:"Coverlet" /d:sonar.cs.opencover.reportsPaths=coverage.opencover.xml /d:sonar.coverage.exclusions="**Test*.cs" /d:sonar.verbose=true
pause
dotnet clean
pause
dotnet build
pause
dotnet test Coverlet.sln /p:CollectCoverage=true /p:CoverletOutputFormat=opencover /p:Exclude="[xunit*]*" /maxcpucount:1
pause
dotnet sonarscanner end
pause