.class final Lcom/squareup/picasso/w;
.super Ljava/lang/Thread;
.source "SourceFile"
.field private final a:Ljava/lang/ref/ReferenceQueue;
.field private final b:Landroid/os/Handler;
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Landroid/os/Handler;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
iput-object p1, p0, Lcom/squareup/picasso/w;->a:Ljava/lang/ref/ReferenceQueue;
iput-object p2, p0, Lcom/squareup/picasso/w;->b:Landroid/os/Handler;
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/squareup/picasso/w;->setDaemon(Z)V
const-string v0, "Picasso-refQueue"
invoke-virtual {p0, v0}, Lcom/squareup/picasso/w;->setName(Ljava/lang/String;)V
return-void
.end method
.method public final run()V
.registers 5
const/16 v0, 0xa
invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
:try_start_5
:goto_5
iget-object v0, p0, Lcom/squareup/picasso/w;->a:Ljava/lang/ref/ReferenceQueue;
invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;
move-result-object v0
check-cast v0, Lcom/squareup/picasso/b;
iget-object v1, p0, Lcom/squareup/picasso/w;->b:Landroid/os/Handler;
iget-object v2, p0, Lcom/squareup/picasso/w;->b:Landroid/os/Handler;
const/4 v3, 0x3
iget-object v0, v0, Lcom/squareup/picasso/b;->a:Lcom/squareup/picasso/a;
invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
:try_end_1b
.catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_1b} :catch_1c
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_1e
goto :goto_5
:catch_1c
move-exception v0
:goto_1d
return-void
:catch_1e
move-exception v0
iget-object v1, p0, Lcom/squareup/picasso/w;->b:Landroid/os/Handler;
new-instance v2, Lcom/squareup/picasso/w$1;
invoke-direct {v2, p0, v0}, Lcom/squareup/picasso/w$1;-><init>(Lcom/squareup/picasso/w;Ljava/lang/Exception;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_1d
.end method