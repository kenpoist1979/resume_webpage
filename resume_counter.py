import json
import boto3

dynamodb = boto3.resource('dynamodb')

table = dynamodb.Table('visitor_counter')

# Update the count


def lambda_handler(event, context):
    # TODO implement
   table.update_item(
    Key={'counter_id': 'global_counter'},
    UpdateExpression='ADD global_counter :incr',
    ExpressionAttributeValues={':incr': 1},
    ReturnValues='UPDATED_NEW')
   # Return the new value after update
   response = table.get_item(Key={'counter_id': 'global_counter'})
   data = response['Item']['global_counter']
    # data = str(data)
    # print(data)
   data1 = json.dumps(data)
    # print(data)

   return {      
        'statusCode': 200,
        'body': data1}

 