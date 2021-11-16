
import aspnetcore; 
import dotnet; 

typealias Action = System.Action_1;

@_cdecl("swift_main")
public func swift_main() -> Swift.Int32 
{

    do 
    {
        let f_mapRoutes = 
            try Action<Microsoft.AspNetCore.Routing.IEndpointRouteBuilder>
            {
                routes in

                try routes.MapGet(pattern: "/")
                {
                    context in

                    return try await context.Response.WriteAsync(text: "Hello World");
                };
            }

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
                            .UseEndpoints(configure: f_mapRoutes)
                            ;
                    }
                    ;
            }
            .Build()!
            .Run()
            ;
        return 0;
    }
    catch let e as System.Exception 
    {
        try! System.Console.WriteLine(value: e.ToString());
        return -1;
    }
    catch
    {
        print("Unhandled error of some kind");
        return -1;
    }

}

