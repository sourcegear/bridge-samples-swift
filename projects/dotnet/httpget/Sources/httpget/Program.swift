
import dotnet; 

public func swift_main() async throws -> Swift.Int32 {
    let client = try System.Net.Http.HttpClient();

    let s = try await client.GetStringAsync(requestUri: "https://text.npr.org/");
    try System.Console.WriteLine(value: s);

    return 0;
}

