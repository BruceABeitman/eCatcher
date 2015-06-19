.class final Lcom/c/a/a/c;
.super Ljava/lang/Thread;
.source "AnalyticsMessages.java"
.field final synthetic a:Ljava/util/concurrent/SynchronousQueue;
.field final synthetic b:Lcom/c/a/a/b;
.method constructor <init>(Lcom/c/a/a/b;Ljava/util/concurrent/SynchronousQueue;)V
.registers 3
iput-object p1, p0, Lcom/c/a/a/c;->b:Lcom/c/a/a/b;
iput-object p2, p0, Lcom/c/a/a/c;->a:Ljava/util/concurrent/SynchronousQueue;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
invoke-static {}, Landroid/os/Looper;->prepare()V
:try_start_3
iget-object v0, p0, Lcom/c/a/a/c;->a:Ljava/util/concurrent/SynchronousQueue;
new-instance v1, Lcom/c/a/a/d;
iget-object v2, p0, Lcom/c/a/a/c;->b:Lcom/c/a/a/b;
invoke-direct {v1, v2}, Lcom/c/a/a/d;-><init>(Lcom/c/a/a/b;)V
invoke-virtual {v0, v1}, Ljava/util/concurrent/SynchronousQueue;->put(Ljava/lang/Object;)V
:try_start_f
:try_end_f
.catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_f} :catch_13
invoke-static {}, Landroid/os/Looper;->loop()V
:goto_12
:try_end_12
.catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_12} :catch_1c
return-void
:catch_13
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
const-string v2, "Couldn\'t build worker thread for Analytics Messages"
invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
:catch_1c
move-exception v0
const-string v1, "MixpanelAPI"
const-string v2, "Mixpanel Thread dying from RuntimeException"
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_12
.end method