.class public Lcom/android/volley/toolbox/JsonArrayRequest;
.super Lcom/android/volley/toolbox/JsonRequest;
.source "JsonArrayRequest.java"
.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
.registers 10
const/4 v1, 0x0
const/4 v3, 0x0
move-object v0, p0
move-object v2, p1
move-object v4, p2
move-object v5, p3
invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
return-void
.end method
.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
.registers 7
:try_start_0
new-instance v2, Ljava/lang/String;
iget-object v3, p1, Lcom/android/volley/NetworkResponse;->data:[B
iget-object v4, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;
invoke-static {v4}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;
move-result-object v4
invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
new-instance v3, Lorg/json/JSONArray;
invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;
move-result-object v4
invoke-static {v3, v4}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;
:try_end_19
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_19} :catch_1b
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_19} :catch_26
move-result-object v3
:goto_1a
return-object v3
:catch_1b
move-exception v0
new-instance v3, Lcom/android/volley/ParseError;
invoke-direct {v3, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V
invoke-static {v3}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;
move-result-object v3
goto :goto_1a
:catch_26
move-exception v1
new-instance v3, Lcom/android/volley/ParseError;
invoke-direct {v3, v1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V
invoke-static {v3}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;
move-result-object v3
goto :goto_1a
.end method