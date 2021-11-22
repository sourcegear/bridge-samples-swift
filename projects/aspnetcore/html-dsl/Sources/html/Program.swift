
import dotnet; 
import aspnetcore; 

import Plot;

func my_handler(context: Microsoft.AspNetCore.Http.HttpContext) async throws {
    // the following snippet was copied from the samples in
    // the README on:
    // https://github.com/JohnSundell/Plot
    let html = HTML(
        .body(
            .h2("Countries and their capitals"),
            .table(
                .tr(.th("Country"), .th("Capital")),
                .tr(.td("Sweden"), .td("Stockholm")),
                .tr(.td("Japan"), .td("Tokyo"))
            ),
            .h2("List of ", .strong("programming languages")),
            .ul(
                .li("Swift"),
                .li("Objective-C"),
                .li("C")
            )
        )
    )

    let str_html = System.String(swiftString: html.render())
    try await context.Response.WriteAsync(text: str_html);
}

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

                            try routes.MapGet(pattern: "/", requestDelegate: my_handler)
                        }
                }
        }
        .Build()!
        .Run()
    return 0;
}

