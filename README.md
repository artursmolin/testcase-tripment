**Testcase for Tripment**

Rails API main function is search medical procedures by name.

1) Ruby 2.7.1/ Rails 6.0.3.3
2) Searchkick + ES(Bonsai)
3) Rspec/Shoulda/Factory

**Usage:**

https://testcase-tripment.herokuapp.com/api/v1/procedures - list all existing procedures

https://testcase-tripment.herokuapp.com/api/v1/procedures?name= - list all procedures that matches this param

**Example**

https://testcase-tripment.herokuapp.com/api/v1/procedures?name=Med

curl -X GET 'https://testcase-tripment.herokuapp.com/api/v1/procedures?name=Med'

response 
```
{"data":
    [{
      "id":"142",
      "type":"procedure",
      "attributes":{
        "name":"Medical inspection",
        "procedure_type":"propaedeutic"
      }
     },
     {
       "id":"249",
       "type":"procedure",
       "attributes":{
         "name":"Medical imaging",
         "procedure_type":"diagnostic"
       }
    }]
}
