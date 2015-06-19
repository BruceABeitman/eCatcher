.class public abstract Lcom/pinguo/Camera360Lib/network/HttpJsonRequest;
.super Lcom/pinguo/Camera360Lib/network/HttpRequestBase;
.source "HttpJsonRequest.java"
.method public constructor <init>(ILjava/lang/String;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/pinguo/Camera360Lib/network/HttpRequestBase;-><init>(ILjava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/Camera360Lib/network/HttpRequestBase;-><init>(Ljava/lang/String;)V
return-void
.end method
.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
.registers 6
:try_start_0
new-instance v1, Ljava/lang/String;
iget-object v2, p1, Lcom/android/volley/NetworkResponse;->data:[B
iget-object v3, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;
invoke-static {v3}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
:try_start_d
:goto_d
:try_end_d
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_d} :catch_1b
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;
move-result-object v3
invoke-static {v2, v3}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;
:try_end_19
.catch Lorg/json/JSONException; {:try_start_d .. :try_end_19} :catch_24
move-result-object v2
:goto_1a
return-object v2
:catch_1b
move-exception v0
new-instance v1, Ljava/lang/String;
iget-object v2, p1, Lcom/android/volley/NetworkResponse;->data:[B
invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
goto :goto_d
:catch_24
move-exception v0
new-instance v2, Lcom/android/volley/VolleyError;
invoke-direct {v2, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V
invoke-static {v2}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;
move-result-object v2
goto :goto_1a
.end method