import { S3Client } as AWS from "@aws-sdk/client-s3";
const s3 = new AWS.S3();

export const handler = async(event) => {
    const timestamp = Date.now();
    console.log(s3)

    let addFileTos3Bucket =  function(s3BucketParams){
        return  s3.putObject(s3BucketParams)
    }
    
    
    const s3BucketParams ={
            ACL: 'public-read',
            Body: 'hello world',
            ContentType: 'text/html',
            Bucket: 'vstoragelogs',
            Key: timestamp+".txt"
        };
        
     let addFileTos3BucketOutput = await addFileTos3Bucket(s3BucketParams)
     console.log(addFileTos3BucketOutput)
 
    
    const response = {
        'statusCode': 200,
        'body': 'File created successfully in the s3 bucket !!!'
    };
    return response;
};
