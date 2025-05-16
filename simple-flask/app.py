from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/update', methods=['POST'])
def update():
    data = request.json
    print(f"Received update: {data}")
    return jsonify({"status": "success", "received": data}), 200

@app.route('/', methods=['GET'])
def root():
    return "Flask app is running", 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
