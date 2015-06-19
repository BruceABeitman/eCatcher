.class  Lcom/glympse/android/hal/am;
.super Ljava/lang/Object;
.source "GlympseSocket.java"
.implements Ljava/lang/Runnable;
.field final synthetic bI:Lcom/glympse/android/hal/ai;
.field private bJ:[B
.method public constructor <init>(Lcom/glympse/android/hal/ai;[B)V
.registers 3
iput-object p1, p0, Lcom/glympse/android/hal/am;->bI:Lcom/glympse/android/hal/ai;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/glympse/android/hal/am;->bJ:[B
return-void
.end method
.method public run()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/glympse/android/hal/am;->bI:Lcom/glympse/android/hal/ai;
invoke-static {v0}, Lcom/glympse/android/hal/ai;->b(Lcom/glympse/android/hal/ai;)Ljava/net/Socket;
move-result-object v0
invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/hal/am;->bJ:[B
invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
:goto_12
:try_end_12
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_13
return-void
:catch_13
move-exception v0
iget-object v0, p0, Lcom/glympse/android/hal/am;->bI:Lcom/glympse/android/hal/ai;
invoke-static {v0}, Lcom/glympse/android/hal/ai;->g(Lcom/glympse/android/hal/ai;)V
goto :goto_12
.end method