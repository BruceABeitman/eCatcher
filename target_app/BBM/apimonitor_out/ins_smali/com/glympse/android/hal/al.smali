.class  Lcom/glympse/android/hal/al;
.super Ljava/lang/Object;
.source "GlympseSocket.java"
.implements Ljava/lang/Runnable;
.field final synthetic bI:Lcom/glympse/android/hal/ai;
.method private constructor <init>(Lcom/glympse/android/hal/ai;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/hal/al;->bI:Lcom/glympse/android/hal/ai;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/glympse/android/hal/ai;Lcom/glympse/android/hal/ai$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/glympse/android/hal/al;-><init>(Lcom/glympse/android/hal/ai;)V
return-void
.end method
.method public run()V
.registers 7
const/4 v5, -0x1
const/4 v0, 0x0
const v1, 0xffff
:try_start_5
new-array v1, v1, [B
iget-object v2, p0, Lcom/glympse/android/hal/al;->bI:Lcom/glympse/android/hal/ai;
invoke-static {v2}, Lcom/glympse/android/hal/ai;->f(Lcom/glympse/android/hal/ai;)Z
move-result v2
if-eqz v2, :cond_17
iget-object v2, p0, Lcom/glympse/android/hal/al;->bI:Lcom/glympse/android/hal/ai;
invoke-static {v2}, Lcom/glympse/android/hal/ai;->b(Lcom/glympse/android/hal/ai;)Ljava/net/Socket;
:try_end_14
.catchall {:try_start_5 .. :try_end_14} :catchall_53
.catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_14} :catch_3f
move-result-object v2
if-nez v2, :cond_1d
:cond_17
iget-object v0, p0, Lcom/glympse/android/hal/al;->bI:Lcom/glympse/android/hal/ai;
invoke-static {v0}, Lcom/glympse/android/hal/ai;->g(Lcom/glympse/android/hal/ai;)V
:goto_1c
:cond_1c
return-void
:try_start_1d
:cond_1d
iget-object v2, p0, Lcom/glympse/android/hal/al;->bI:Lcom/glympse/android/hal/ai;
invoke-static {v2}, Lcom/glympse/android/hal/ai;->b(Lcom/glympse/android/hal/ai;)Ljava/net/Socket;
move-result-object v2
invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
move-result-object v0
:goto_27
invoke-virtual {v0}, Ljava/io/InputStream;->available()I
move-result v2
if-eq v5, v2, :cond_4d
invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I
move-result v2
if-eq v5, v2, :cond_4d
iget-object v3, p0, Lcom/glympse/android/hal/al;->bI:Lcom/glympse/android/hal/ai;
invoke-static {v3}, Lcom/glympse/android/hal/ai;->d(Lcom/glympse/android/hal/ai;)Lcom/glympse/android/hal/GSocketListener;
move-result-object v3
iget-object v4, p0, Lcom/glympse/android/hal/al;->bI:Lcom/glympse/android/hal/ai;
invoke-interface {v3, v4, v1, v2}, Lcom/glympse/android/hal/GSocketListener;->messageReceived(Lcom/glympse/android/hal/GSocket;[BI)V
:try_end_3e
.catchall {:try_start_1d .. :try_end_3e} :catchall_53
.catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_3e} :catch_3f
goto :goto_27
:catch_3f
move-exception v1
iget-object v1, p0, Lcom/glympse/android/hal/al;->bI:Lcom/glympse/android/hal/ai;
invoke-static {v1}, Lcom/glympse/android/hal/ai;->g(Lcom/glympse/android/hal/ai;)V
:goto_45
if-eqz v0, :cond_1c
:try_start_47
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
:try_end_4a
.catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_4a} :catch_4b
goto :goto_1c
:catch_4b
move-exception v0
goto :goto_1c
:cond_4d
iget-object v1, p0, Lcom/glympse/android/hal/al;->bI:Lcom/glympse/android/hal/ai;
invoke-static {v1}, Lcom/glympse/android/hal/ai;->g(Lcom/glympse/android/hal/ai;)V
goto :goto_45
:catchall_53
move-exception v0
iget-object v1, p0, Lcom/glympse/android/hal/al;->bI:Lcom/glympse/android/hal/ai;
invoke-static {v1}, Lcom/glympse/android/hal/ai;->g(Lcom/glympse/android/hal/ai;)V
throw v0
.end method