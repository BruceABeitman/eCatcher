.class public final Lcom/flurry/sdk/eh;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static a:Lorg/apache/http/conn/scheme/SchemeRegistry;
.method public static a(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;
.registers 3
new-instance v0, Lorg/apache/http/impl/conn/SingleClientConnManager;
invoke-static {}, Lcom/flurry/sdk/eh;->a()Lorg/apache/http/conn/scheme/SchemeRegistry;
move-result-object v1
invoke-direct {v0, p0, v1}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v1, v0, p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
return-object v1
.end method
.method private static declared-synchronized a()Lorg/apache/http/conn/scheme/SchemeRegistry;
.registers 6
const-class v1, Lcom/flurry/sdk/eh;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/flurry/sdk/eh;->a:Lorg/apache/http/conn/scheme/SchemeRegistry;
if-eqz v0, :cond_b
sget-object v0, Lcom/flurry/sdk/eh;->a:Lorg/apache/http/conn/scheme/SchemeRegistry;
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_53
:goto_9
monitor-exit v1
return-object v0
:cond_b
:try_start_b
new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;
invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V
sput-object v0, Lcom/flurry/sdk/eh;->a:Lorg/apache/http/conn/scheme/SchemeRegistry;
sget-object v0, Lcom/flurry/sdk/eh;->a:Lorg/apache/http/conn/scheme/SchemeRegistry;
new-instance v2, Lorg/apache/http/conn/scheme/Scheme;
const-string v3, "http"
invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;
move-result-object v4
const/16 v5, 0x50
invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
invoke-static {}, Lcom/flurry/sdk/el;->d()Z
move-result v0
if-eqz v0, :cond_40
sget-object v0, Lcom/flurry/sdk/eh;->a:Lorg/apache/http/conn/scheme/SchemeRegistry;
new-instance v2, Lorg/apache/http/conn/scheme/Scheme;
const-string v3, "https"
new-instance v4, Lcom/flurry/sdk/ef;
invoke-direct {v4}, Lcom/flurry/sdk/ef;-><init>()V
const/16 v5, 0x1bb
invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
:goto_3d
sget-object v0, Lcom/flurry/sdk/eh;->a:Lorg/apache/http/conn/scheme/SchemeRegistry;
goto :goto_9
:cond_40
sget-object v0, Lcom/flurry/sdk/eh;->a:Lorg/apache/http/conn/scheme/SchemeRegistry;
new-instance v2, Lorg/apache/http/conn/scheme/Scheme;
const-string v3, "https"
invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;
move-result-object v4
const/16 v5, 0x1bb
invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
:try_end_52
.catchall {:try_start_b .. :try_end_52} :catchall_53
goto :goto_3d
:catchall_53
move-exception v0
monitor-exit v1
throw v0
.end method