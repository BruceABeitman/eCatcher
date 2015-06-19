.class  Lcom/flurry/sdk/ek$2;
.super Ljava/lang/Thread;
.source "SourceFile"
.field final synthetic a:Lcom/flurry/sdk/ek;
.method constructor <init>(Lcom/flurry/sdk/ek;)V
.registers 2
iput-object p1, p0, Lcom/flurry/sdk/ek$2;->a:Lcom/flurry/sdk/ek;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/ek$2;->a:Lcom/flurry/sdk/ek;
invoke-static {v0}, Lcom/flurry/sdk/ek;->a(Lcom/flurry/sdk/ek;)Ljava/net/HttpURLConnection;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/flurry/sdk/ek$2;->a:Lcom/flurry/sdk/ek;
invoke-static {v0}, Lcom/flurry/sdk/ek;->a(Lcom/flurry/sdk/ek;)Ljava/net/HttpURLConnection;
move-result-object v0
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
:cond_11
iget-object v0, p0, Lcom/flurry/sdk/ek$2;->a:Lcom/flurry/sdk/ek;
invoke-static {v0}, Lcom/flurry/sdk/ek;->b(Lcom/flurry/sdk/ek;)Lorg/apache/http/client/HttpClient;
move-result-object v0
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/flurry/sdk/ek$2;->a:Lcom/flurry/sdk/ek;
invoke-static {v0}, Lcom/flurry/sdk/ek;->b(Lcom/flurry/sdk/ek;)Lorg/apache/http/client/HttpClient;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
:cond_26
return-void
.end method