def lambda_handler(event, context):
    response = {
        'event': event
    }
    return {
        'statusCode': 200,
        'response': response
    }
