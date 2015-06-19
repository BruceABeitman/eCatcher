.class final Lcom/a/a/h;
.super Ljava/lang/Object;
.source "WebSocketClient.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/a/a/f;
.method constructor <init>(Lcom/a/a/f;)V
.registers 2
iput-object p1, p0, Lcom/a/a/h;->a:Lcom/a/a/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/a/a/h;->a:Lcom/a/a/f;
invoke-static {v0}, Lcom/a/a/f;->a(Lcom/a/a/f;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_7
:try_end_7
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_23
iget-object v0, p0, Lcom/a/a/h;->a:Lcom/a/a/f;
invoke-static {v0}, Lcom/a/a/f;->d(Lcom/a/a/f;)Ljava/net/Socket;
move-result-object v0
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/a/a/h;->a:Lcom/a/a/f;
invoke-static {v0}, Lcom/a/a/f;->d(Lcom/a/a/f;)Ljava/net/Socket;
move-result-object v0
invoke-static {v0}, Ldroidbox/java/net/Socket;->close(Ljava/net/Socket;)V
iget-object v0, p0, Lcom/a/a/h;->a:Lcom/a/a/f;
const/4 v2, 0x0
invoke-static {v0, v2}, Lcom/a/a/f;->a(Lcom/a/a/f;Ljava/net/Socket;)Ljava/net/Socket;
:cond_1e
monitor-exit v1
:try_end_1f
.catchall {:try_start_7 .. :try_end_1f} :catchall_20
:goto_1f
return-void
:catchall_20
move-exception v0
:try_start_21
monitor-exit v1
throw v0
:catch_23
:try_end_23
.catch Ljava/io/IOException; {:try_start_21 .. :try_end_23} :catch_23
move-exception v0
iget-object v1, p0, Lcom/a/a/h;->a:Lcom/a/a/f;
invoke-static {v1}, Lcom/a/a/f;->f(Lcom/a/a/f;)Lcom/a/a/k;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/a/a/k;->onError(Ljava/lang/Exception;)V
goto :goto_1f
.end method