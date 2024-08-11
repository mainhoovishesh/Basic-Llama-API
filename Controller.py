from flask import Flask, request, jsonify
from llamaConnection import query_llama  # Import the LLaMA connection function

app = Flask(__name__)

@app.route('/generate', methods=['POST'])
def generate_response():
    data = request.get_json()

    if 'prompt' not in data:
        return jsonify({"error": "No prompt provided"}), 400

    prompt = data['prompt']
    response = query_llama(prompt)
    return jsonify({"response": response})

if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0', port=5000)
