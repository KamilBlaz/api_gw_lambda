import subprocess

def handler(event, context):
    name = event['queryStringParameters']['name']
    version = event['queryStringParameters']['version']

    try:
        subprocess.check_call(["pip", "install", f"{name}=={version}", "-t", "/tmp"])
        return {
            'statusCode': 200,
            'body': f"package_module.{name}"
        }

    except Exception as e:
        return {
            'statusCode': 500,
            'body': "Install failed"
        }
