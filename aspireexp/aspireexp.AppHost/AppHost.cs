var builder = DistributedApplication.CreateBuilder(args);

var cache = builder.AddRedis("cache");

var apiService = builder.AddProject<Projects.aspireexp_ApiService>("apiservice")
    .WithHttpHealthCheck("/health");

builder.AddProject<Projects.aspireexp_Web>("webfrontend")
    .WithExternalHttpEndpoints()
    .WithHttpHealthCheck("/health")
    .WithReference(cache)
    .WaitFor(cache)
    .WithReference(apiService)
    .WaitFor(apiService);

await builder.Build().RunAsync();
