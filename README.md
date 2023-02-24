Steps to create a bucket
1. visited the s3 bucket page 
2. created a new bucket with modyfing certain functions such as enable versioning, named =>vstoragelogs
3. created a bucket

Steps to create a lamda function
1. visited the functions page
2. selected lamda functions =>  create new function, named => log_each_invocation

Steps to create api
1. In lamda function 
	=> add trigger => API gateway =>create new api => HTTP API => named, log_each_invocation-API => Deployment stage default 
2. security mechanism is open
3. under api => resources , created a resource root 
4. created resource trigger 
5. under actions created a method , with any as type
6. created api trigger

Steps to test and deploy the api
1. selected deploy api from actions tab
2. created new stage, named test
3. entered the desriptions and deployed 
4. link of api was given in invoke api 
5. pasted the link in postman and tested the code



