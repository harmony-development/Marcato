import App
import Vapor
import Redis

var env = try Environment.detect()
try LoggingSystem.bootstrap(from: &env)
let app = Application(env)
app.redis.configuration = try RedisConfiguration(hostname: "127.0.0.1", port: 6379)
defer { app.shutdown() }
try configure(app)
try app.run()
