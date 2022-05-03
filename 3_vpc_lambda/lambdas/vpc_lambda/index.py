import boto3

def lambda_handler(event, context):
    s3_resource = boto3.resource('s3')

    my_buckets = []

    for bucket in s3_resource.buckets.all():
        my_buckets.append(bucket.name)

    return {
        'statusCode': 200,
        'my_buckets': my_buckets
    }
