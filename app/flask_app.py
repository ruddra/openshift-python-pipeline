from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/', methods=['GET'])
def get_tasks():
    tasks = [
        {
            'id': 1,
            'title': 'Openshift Jenkins Pipeline Python/Nginx Implementation',
            'description': 'Find the implementation at https://github.com/ruddra/openshift-python-nginx'
        },
        {
            'id': 2,
            'title': 'Openshift Jenkins Pipeline Django Implementation',
            'description': 'Find the implementation at https://github.com/ruddra/openshift-django'
        }
    ]
    return jsonify({'tasks': tasks})

if __name__ == '__main__':
    app.run(host='0.0.0.0')