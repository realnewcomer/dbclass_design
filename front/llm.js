// 获取DOM元素
const chatbox = document.getElementById("chatbox");
const userInput = document.getElementById("userInput");
const submitBtn = document.getElementById("submitBtn");
const clearBtn = document.getElementById("clearBtn");

// 初始化聊天记录
let chatHistory = [];

// 发送消息函数
function sendMessage(message, sender) {
    const messageDiv = document.createElement("div");
    messageDiv.classList.add("message");

    // 根据发送者添加不同的类
    if (sender === "user") {
        messageDiv.classList.add("user-msg");
    } else if (sender === "bot") {
        messageDiv.classList.add("bot-msg");
    }

    // 处理换行符
    message = message.replace(/\n/g, "<br>");  // 将换行符替换为 <br> 标签
    messageDiv.innerHTML = `<p>${sender}: ${message}</p>`;
    chatbox.appendChild(messageDiv);
    chatbox.scrollTop = chatbox.scrollHeight;  // 自动滚动到底部
}

// 发送请求并获取模型回答
async function getBotResponse(message) {
    const response = await fetch('http://127.0.0.1:5000/respond', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ prompt: message, history: chatHistory })
    });

    if (!response.ok) {
        console.error('Error fetching bot response:', response);
        return 'Sorry, I encountered an error.';
    }

    const data = await response.json();
    return data.response;  // 假设返回的 JSON 中有 `response` 字段
}

// 处理用户输入并清空输入框
async function handleUserInput() {
    const message = userInput.value.trim();
    if (message === "") return;

    // 显示用户消息
    sendMessage(message, "user");

    // 将用户消息加入聊天历史
    chatHistory.push([message, ""]);

    // 获取机器人回答
    const botMessage = await getBotResponse(message);

    // 显示机器人消息
    sendMessage(botMessage, "bot");

    // 将机器人的回答加入聊天历史
    chatHistory.push([botMessage, ""]);

    // 清空输入框
    userInput.value = "";
}

// 监听回车键提交消息
userInput.addEventListener("keydown", function (event) {
    if (event.key === "Enter" && !event.shiftKey) {
        handleUserInput();
        event.preventDefault(); // 阻止换行
    }
});

// 提交按钮点击事件
submitBtn.addEventListener("click", handleUserInput);

// 清空按钮点击事件
clearBtn.addEventListener("click", () => {
    chatbox.innerHTML = "";
    userInput.value = "";
    chatHistory = []; // 清空聊天历史
});
