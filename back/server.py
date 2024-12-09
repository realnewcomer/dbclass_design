from flask import Flask, request, jsonify
from flask_cors import CORS  # 导入 CORS
import json
import server_http

app = Flask(__name__)

# 启用 CORS
CORS(app)

# 清除历史记录
@app.route('/clear_history', methods=['POST'])
def clear_history():
    chat_history = []
    data = {"history": chat_history}
    with open("history.json", "w") as f:
        json.dump(data, f)
    return jsonify({"message": "History cleared", "history": chat_history})

# 获取模型响应
@app.route('/respond', methods=['POST'])
def respond():
    data = request.json
    prompt = data.get('prompt')
    history = data.get('history', [])
    top_k = data.get('top_k', 4)
    top_p = data.get('top_p', 0.8)
    max_new_tokens = data.get('max_new_tokens', 2048)
    temperature = data.get('temperature', 0.95)
    use_stream_chat = data.get('use_stream_chat', True)

    authorization = "OTM0MTdkYzdhYmQ2YWE2MjZkM2ExOWZmNGYzNzgwMzBlNTIzMGJjNw=="
    host = "http://glm.1095933187854660.cn-beijing.pai-eas.aliyuncs.com/"

    response = server_http.post_http_request(
        prompt, history,
        host, authorization,
        max_new_tokens, temperature, top_k, top_p,
        use_stream_chat=use_stream_chat)

    history_output = []
    for h, history in server_http.get_streaming_response(response):
        history_output.append({"response": h, "history": history})

    # 更新历史记录
    with open("history.json", "w") as f:
        json.dump({"history": history}, f)

    return jsonify({"history": history_output[-1]['history'], "response": history_output[-1]['response']})


if __name__ == "__main__":
    # 初始化历史记录为空
    with open("history.json", "w") as f:
        json.dump({"history": []}, f)
    
    app.run(debug=True, host="0.0.0.0", port=5000)
