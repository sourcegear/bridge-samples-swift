
import dotnet; 

public func swift_main() throws -> Swift.Int32 {
    let client = try System.Net.Http.HttpClient();

    Task
    {
        let s = try await client.GetStringAsync(requestUri: "https://text.npr.org/");
        try System.Console.WriteLine(value: s);
    }
    // silly way to give the other thread a chance to finish:
    // TODO fix this
    try System.Threading.Thread.Sleep(millisecondsTimeout: 5000);

    return 0;
}

