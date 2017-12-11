
import Foundation
#if os(iOS)
    import BartlebysCoreiOS
#elseif os(macOS)
    import BartlebysCore
#elseif os(Linux)
    import BartlebysCore
#endif

// @todo implement a full DataPoint sample
open class  MyDataPoint: DataPoint {

    required public init(credentials: Credentials, sessionIdentifier: String, coder: ConcreteCoder) throws {
        try super.init(credentials: credentials, sessionIdentifier: sessionIdentifier, coder: coder)
    }

 }

// Use mongo default
MODELS_PRIMARY_KEY = Model.ModelCodingKeys._id

let credentials = Credentials(username: "NoBody", password: "NoBody")

do{

    // Create a data Data Point with specific initial Credentials.
    let dataPoint = try MyDataPoint(credentials: credentials, sessionIdentifier: "xxx", coder: JSONCoder())
    dataPoint.authenticationMethod = .basicHTTPAuth
    dataPoint.scheme = Schemes.https
    dataPoint.host = "demo.bartlebys.org"
    dataPoint.apiBasePath = "www/api/v1/"

    /// Use the data Point


}catch{
    Logger.log("\(error)", category: Logger.Categories.critical)
}


