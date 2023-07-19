import ballerina/http;
import ballerina/io;

configurable string emailServiceUrl = "http://localhost:9000";

# A service representing a network-accessible API
# bound to port `9090`.
@display {
    label: "BookingService",
    id: "BookingService-3b99eec8-dc8f-4274-85d8-e70258a22374"
}
service / on new http:Listener(9090) {

    @display {
        label: "EmailService",
        id: "EmailService-dc6e6790-25c1-455b-aa00-e023560d1b1a"
    }
    http:Client emailServiceClient;

    function init() returns error? {
        self.emailServiceClient = check new (emailServiceUrl);
    }

    resource function get books() returns Book[] {
        return bookStore.toArray();
    }

    resource function post books(@http:Payload Book book) returns Book|error {
        bookStore.add(book);
        // Get /sendEmail?name=book.author
        string response = check self.emailServiceClient->/sendEmail(name = book.author);
        io:println(response);
        return book;
    }
}
