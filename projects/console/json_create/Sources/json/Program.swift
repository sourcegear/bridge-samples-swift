
import Foundation;
import dotnet; 

typealias JsonValue = System.Text.Json.Nodes.JsonValue;
typealias JsonArray = System.Text.Json.Nodes.JsonArray;
typealias JsonNode = System.Text.Json.Nodes.JsonNode;
typealias JsonObject = System.Text.Json.Nodes.JsonObject;

public func swift_main() throws -> Swift.Int32 {

    // --------
    // create an empty Json object so we can put
    // stuff into it

    let json = try JsonObject(options: nil);

    // --------
    // add the current date as a string

    // get the current date from Swift
    // convert to a .NET string
    let str_date = System.String(swiftString: "\(Date())")

    // add to the JSON object
    try json.Add(propertyName: "date", value: JsonValue.Create(value: str_date));

    // --------
    // add the command line arguments as an array

    // start with the command line args as a .NET array
    // of .NET strings
    let args = try System.Environment.GetCommandLineArgs()

    // convert each string to a JsonNode
    // use Swift map() on the .NET array
    func to_jsonnode(x : System.String) throws -> JsonNode {
        return try JsonNode.op_Implicit(value: x)!;
    }

    let json_args = try args.map(to_jsonnode)

    // add to the JSON object
    try json.Add(propertyName: "arguments", value: JsonArray(items: System_Arr(array: json_args)));

    // --------
    // serialize and write to the console

    try System.Console.WriteLine(value: json.ToString());

    return 0;
}

