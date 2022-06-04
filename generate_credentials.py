import datetime
import yaml
import sys
import hashlib

# generate API auth credentials
def fetch_config(key, secret):

    # GENERATE TIMESTAMP
    ts = int(round(datetime.datetime.now().timestamp()))

    # GENERATE PRE-HASH-STRING
    preHashContents = str(ts) + secret + key 

    # perform URL encoding
    hsh = hashlib.md5(preHashContents.encode('utf-8')).hexdigest()

    # provide query config contents to caller
    return { "timestamp": ts, "key": key, "hash": hsh }

# write updated config contents to docker.compose.yml file
def write_docker_compose(config):

    # placeholder for yaml config file
    loaded = {}

    # fetch config from docker-compose.yml file
    with open("docker-compose.yml", 'r') as stream:
        try:
            loaded = yaml.safe_load(stream)
        except yaml.YAMLError as exc:
            print(exc)

    # Modify the fields from the dict
    loaded['services']['app']['environment']['MARVEL_API_KEY'] = config['key']
    loaded['services']['app']['environment']['MARVEL_API_TIMESTAMP'] = config['timestamp']
    loaded['services']['app']['environment']['MARVEL_API_HASH'] = config['hash'] 

    # Save it again
    with open("docker-compose.yml", 'w') as stream:
        try:
            yaml.dump(loaded, stream, default_flow_style=False)
        except yaml.YAMLError as exc:
            print(exc)

# prompt for key/secret from user
key = sys.argv[1]
secret = sys.argv[2]

# fetch config: timestamp, key, secret
config = fetch_config(key=key, secret=secret)

# update docker_compose.yml file with updated config
write_docker_compose(config)

# print(fetch_config(key, secret), indent=4))
