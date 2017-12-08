import BartlebysCore

// @todo implement a full DataPoint sample
class  MyDataPoint: DataPoint {
     /*
    override open var authenticationMethod: AuthenticationMethod = .basicHTTPAuth
    override open var scheme: Scheme = Scheme.https
    override open var host: String = "demo.bartlebys.org"
    override open var apiBasePath: String = "www/api/v1/"
    override open func integrateResponse<T>(_ response: Response<T>) where T : Decodable, T : Encodable {
    }
    */
 }

let credentials = Credentials(username: "NoBody", password: "NoBody", playerId: "")
let session = Session(sessionDelegate: MyDataPoint(credentials: credentials))

print (session.apiBasePath)
