import os
from collections import defaultdict
from flask import Flask
from redis import Redis

app = Flask(__name__)

PORT = int(os.getenv('PORT'))

class Database:
    data = defaultdict(int)

    def incr(self, name):
        self.data[name] += 1
        return self.data[name]

    def all(self):
        return self.data


if os.environ.get('redis'):
    redis = Redis(host='redis', port=6379)
else:
    redis = Database()


@app.route('/')
def hello():
    count = redis.incr('hits')
    return 'Hello World! I have been seen {} times.\n'.format(count)

if __name__ == "__main__":
     app.run(host="0.0.0.0", port=PORT, debug=True)
