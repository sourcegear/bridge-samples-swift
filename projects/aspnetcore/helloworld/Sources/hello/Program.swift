
import dotnet; 
import aspnetcore; 

public func swift_main() throws -> Swift.Int32 {
    try Microsoft.Extensions.Hosting.Host.CreateDefaultBuilder()!
        .ConfigureWebHostDefaults
        {
            webHostBuilder in

            try webHostBuilder
                .Configure
                {
                    app in

                    try app
                        .UseRouting()
                        .UseEndpoints
                        {
                            routes in

                            try routes.MapGet(pattern: "/")
                            {
                                context in

                                try await context.Response.WriteAsync(text: "Hello World");
                            }
                        }
                }
        }
        .Build()!
        .Run()
    return 0;
}

