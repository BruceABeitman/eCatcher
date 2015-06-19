.class public abstract Lcom/pinguo/Camera360Lib/network/HttpStringRequest;
.super Lcom/pinguo/Camera360Lib/network/HttpRequestBase;
.source "HttpStringRequest.java"
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
:try_end_d
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_d} :catch_16
:goto_d
invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;
move-result-object v2
invoke-static {v1, v2}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;
move-result-object v2
return-object v2
:catch_16
move-exception v0
new-instance v1, Ljava/lang/String;
iget-object v2, p1, Lcom/android/volley/NetworkResponse;->data:[B
invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
goto :goto_d
.end method