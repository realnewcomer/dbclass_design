import json
from typing import Iterable, List

import requests


def clear_line(n: int = 1) -> None:
    LINE_UP = '\033[1A'
    LINE_CLEAR = '\x1b[2K'
    for _ in range(n):
        print(LINE_UP, end=LINE_CLEAR, flush=True)


def post_http_request(prompt: str,
                      history: list,
                      host: str,
                      authorization: str,
                      max_new_tokens: int = 2048,
                      temperature: float = 0.95,
                      top_k: int = 1,
                      top_p: float = 0.8,
                      use_stream_chat: bool = False) -> requests.Response:
    headers = {
        "User-Agent": "Test Client",
        "Authorization": f"{authorization}"
    }
    if not history:
        history = []
    pload = {
        "prompt": prompt,
        "top_k": top_k,
        "top_p": top_p,
        "temperature": temperature,
        "max_new_tokens": max_new_tokens,
        "use_stream_chat": use_stream_chat,
        "history": history
    }
    response = requests.post(host, headers=headers,
                             json=pload, stream=use_stream_chat)
    return response


def get_streaming_response(response: requests.Response) -> Iterable[List[str]]:
    for chunk in response.iter_lines(chunk_size=8192,
                                     decode_unicode=False,
                                     delimiter=b"\0"):
        if chunk:
            data = json.loads(chunk.decode("utf-8"))
            output = data["response"]
            history = data["history"]
            yield output, history