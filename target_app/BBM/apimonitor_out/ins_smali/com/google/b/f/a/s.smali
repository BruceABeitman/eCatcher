.class public final Lcom/google/b/f/a/s;
.super Ljava/lang/Object;
.source "Uninterruptibles.java"
.method public static a(Ljava/util/concurrent/Future;)Ljava/lang/Object;
.registers 3
const/4 v0, 0x0
:goto_1
:try_start_1
invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
:try_end_4
.catchall {:try_start_1 .. :try_end_4} :catchall_12
.catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_f
move-result-object v1
if-eqz v0, :cond_e
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
:cond_e
return-object v1
:catch_f
move-exception v0
const/4 v0, 0x1
goto :goto_1
:catchall_12
move-exception v1
if-eqz v0, :cond_1c
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
:cond_1c
throw v1
.end method