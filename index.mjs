import * as AWS from "@aws-sdk/client-s3";

export const handler = async(event) => {
    const timestamp = Date.now();
    var s3 = new AWS.S3();
    console.log(s3)

    let upload =  function(params){
        return  s3.putObject(params)
    }
    
    
    const param ={
            ACL: 'public-read',
            Body: 'hello world',
            ContentType: 'text/html',
            Bucket: 'vstoragelogs',
            Key: timestamp+".txt"
        };
        
     let up = await upload(param)
     console.log(up)
 
    
    const response = {
        'statusCode': 200,
        'body': 'File created successfully in the s3 bucket !!!'
    };
    return response;
};
