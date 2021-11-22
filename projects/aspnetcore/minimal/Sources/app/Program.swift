
import dotnet; 
import aspnetcore; 

typealias WebApplication = Microsoft.AspNetCore.Builder.WebApplication;
typealias Func = System.Func_1;

public func swift_main() throws -> Swift.Int32 {
    let app = try WebApplication.Create()

    try app.MapGet(
        pattern: "/", 
        handler: 
            Func<System.String>
            { 
                () -> System.String in 
                "Hello World!" 
            }
        );

    try app.Run();

    return 0;
}

