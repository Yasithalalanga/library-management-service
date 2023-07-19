import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "EmailService",
	id: "EmailService-dc6e6790-25c1-455b-aa00-e023560d1b1a"
}
service / on new http:Listener(9000) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get sendEmail(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Sending an email to " + name + "!";
    }
}
