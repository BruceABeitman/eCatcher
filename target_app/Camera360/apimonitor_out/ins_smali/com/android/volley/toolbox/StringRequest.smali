.class public Lcom/android/volley/toolbox/StringRequest;
.super Lcom/android/volley/Request;
.source "StringRequest.java"
.field private final mListener:Lcom/android/volley/Response$Listener;
.method public constructor <init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
.registers 5
invoke-direct {p0, p1, p2, p4}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
iput-object p3, p0, Lcom/android/volley/toolbox/StringRequest;->mListener:Lcom/android/volley/Response$Listener;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
return-void
.end method
.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/StringRequest;->deliverResponse(Ljava/lang/String;)V
return-void
.end method
.method protected deliverResponse(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/android/volley/toolbox/StringRequest;->mListener:Lcom/android/volley/Response$Listener;
invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V
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