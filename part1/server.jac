# token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2ZjU5NDgyODMwMWY3MDVmMzA1ZWYwMyIsImVtYWlsIjoidGVzdEBtYWlsLmNvbSIsInJvb3RfaWQiOiI2NmY1OTQ4MjgzMDFmNzA1ZjMwNWVmMDIiLCJpc19hY3RpdmF0ZWQiOnRydWUsImV4cGlyYXRpb24iOjE3Mjc0MzE3NjAsInN0YXRlIjoiT0Z4NllSeHAifQ.0QEZZ3pSbruloaW1wxEx6v7qt3hc5ZoXfFjhgLfDfzo

# curl -X POST http://localhost:8000/walker/interact -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2ZjU5NDgyODMwMWY3MDVmMzA1ZWYwMyIsImVtYWlsIjoidGVzdEBtYWlsLmNvbSIsInJvb3RfaWQiOiI2NmY1OTQ4MjgzMDFmNzA1ZjMwNWVmMDIiLCJpc19hY3RpdmF0ZWQiOnRydWUsImV4cGlyYXRpb24iOjE3Mjc0MzE3NjAsInN0YXRlIjoiT0Z4NllSeHAifQ.0QEZZ3pSbruloaW1wxEx6v7qt3hc5ZoXfFjhgLfDfzo"
walker interact {
    can return_message with `root entry {
        report {
            "response": "Hello, world!"
        };
    }
}

# curl --location 'http://localhost:8000/walker/interact_with_body' \
# --header 'Content-Type: application/json' \
# -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2ZjU5NDgyODMwMWY3MDVmMzA1ZWYwMyIsImVtYWlsIjoidGVzdEBtYWlsLmNvbSIsInJvb3RfaWQiOiI2NmY1OTQ4MjgzMDFmNzA1ZjMwNWVmMDIiLCJpc19hY3RpdmF0ZWQiOnRydWUsImV4cGlyYXRpb24iOjE3Mjc0MzE3NjAsInN0YXRlIjoiT0Z4NllSeHAifQ.0QEZZ3pSbruloaW1wxEx6v7qt3hc5ZoXfFjhgLfDfzo" \
# --data '{
#   "name": "Lynn"
# }'
walker interact_with_body {
    has name: str;

    can return_message with `root entry {
        report {
            "response": "Hello, " + self.name + "!"
        };
    }
}

# curl --location 'http://localhost:8000/walker/interact_add' \
# --header 'Content-Type: application/json' \
# -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2ZjU5NDgyODMwMWY3MDVmMzA1ZWYwMyIsImVtYWlsIjoidGVzdEBtYWlsLmNvbSIsInJvb3RfaWQiOiI2NmY1OTQ4MjgzMDFmNzA1ZjMwNWVmMDIiLCJpc19hY3RpdmF0ZWQiOnRydWUsImV4cGlyYXRpb24iOjE3Mjc0MzMwMTgsInN0YXRlIjoibmhzcThVZnoifQ.EtfK2TT3qm3k3fvCO_g0F5m4gm1lDBfYHZjhXpj1zuo" \
# --data '{
#   "integer1": 10,
#   "integer2": 15
# }'
walker interact_add {
    has integer1: int;
    has integer2: int;

    can return_message with `root entry {
        report {
            "response": "The sum of " + str(self.integer1) + " and " + str(self.integer2) + " is " + str(self.integer1 + self.integer2) + "!"
        };
    }
}

# curl --location 'http://localhost:8000/walker/interact_age' \
# --header 'Content-Type: application/json' \
# -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2ZjU5NDgyODMwMWY3MDVmMzA1ZWYwMyIsImVtYWlsIjoidGVzdEBtYWlsLmNvbSIsInJvb3RfaWQiOiI2NmY1OTQ4MjgzMDFmNzA1ZjMwNWVmMDIiLCJpc19hY3RpdmF0ZWQiOnRydWUsImV4cGlyYXRpb24iOjE3Mjc0MzMwMTgsInN0YXRlIjoibmhzcThVZnoifQ.EtfK2TT3qm3k3fvCO_g0F5m4gm1lDBfYHZjhXpj1zuo" \
# --data '{
#   "age": 22
# }'
walker interact_age {
    has age: int;

    can return_message with `root entry {
        report {
            "response": "You are " + str(self.age) + " years old."
        };
    }
}