.class public abstract Lcom/android/volley/toolbox/JsonRequest;
.super Lcom/android/volley/Request;
.source "JsonRequest.java"
.field private static final PROTOCOL_CHARSET:Ljava/lang/String; = "utf-8"
.field private static final PROTOCOL_CONTENT_TYPE:Ljava/lang/String;
.field private final mListener:Lcom/android/volley/Response$Listener;
.field private final mRequestBody:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 4
const-string/jumbo v0, "application/json; charset=%s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
const-string/jumbo v3, "utf-8"
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/android/volley/toolbox/JsonRequest;->PROTOCOL_CONTENT_TYPE:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
.registers 6
invoke-direct {p0, p1, p2, p5}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
iput-object p4, p0, Lcom/android/volley/toolbox/JsonRequest;->mListener:Lcom/android/volley/Response$Listener;
iput-object p3, p0, Lcom/android/volley/toolbox/JsonRequest;->mRequestBody:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
.registers 11
const/4 v1, -0x1
move-object v0, p0
move-object v2, p1
move-object v3, p2
move-object v4, p3
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
return-void
.end method
.method protected deliverResponse(Ljava/lang/Object;)V
.registers 3
iget-object v0, p0, Lcom/android/volley/toolbox/JsonRequest;->mListener:Lcom/android/volley/Response$Listener;
invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V
return-void
.end method
.method public getBody()[B
.registers 7
const/4 v1, 0x0
:try_start_1
iget-object v2, p0, Lcom/android/volley/toolbox/JsonRequest;->mRequestBody:Ljava/lang/String;
if-nez v2, :cond_6
:goto_5
return-object v1
:cond_6
iget-object v2, p0, Lcom/android/volley/toolbox/JsonRequest;->mRequestBody:Ljava/lang/String;
const-string/jumbo v3, "utf-8"
invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
:try_end_e
.catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_e} :catch_10
move-result-object v1
goto :goto_5
:catch_10
move-exception v0
const-string/jumbo v2, "Unsupported Encoding while trying to get the bytes of %s using %s"
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
iget-object v5, p0, Lcom/android/volley/toolbox/JsonRequest;->mRequestBody:Ljava/lang/String;
aput-object v5, v3, v4
const/4 v4, 0x1
const-string/jumbo v5, "utf-8"
aput-object v5, v3, v4
invoke-static {v2, v3}, Lcom/android/volley/VolleyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_5
.end method
.method public getBodyContentType()Ljava/lang/String;
.registers 2
sget-object v0, Lcom/android/volley/toolbox/JsonRequest;->PROTOCOL_CONTENT_TYPE:Ljava/lang/String;
return-object v0
.end method
.method public getPostBody()[B
.registers 2
invoke-virtual {p0}, Lcom/android/volley/toolbox/JsonRequest;->getBody()[B
move-result-object v0
return-object v0
.end method
.method public getPostBodyContentType()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lcom/android/volley/toolbox/JsonRequest;->getBodyContentType()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected abstract parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
.end method