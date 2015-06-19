.class final Lcom/bbm/ui/e/be;
.super Lcom/bbm/util/b;
.source "MessagesDelegateAdapter.java"
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/bbm/util/bf;
.field final synthetic c:Lcom/bbm/ui/e/bd;
.method constructor <init>(Lcom/bbm/ui/e/bd;Ljava/lang/String;Lcom/bbm/util/bf;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/e/be;->c:Lcom/bbm/ui/e/bd;
iput-object p2, p0, Lcom/bbm/ui/e/be;->a:Ljava/lang/String;
iput-object p3, p0, Lcom/bbm/ui/e/be;->b:Lcom/bbm/util/bf;
invoke-direct {p0}, Lcom/bbm/util/b;-><init>()V
return-void
.end method
.method private varargs b()Ljava/lang/Void;
.registers 8
const-wide/16 v5, 0xbb8
const/4 v4, 0x0
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v0
iget-object v2, p0, Lcom/bbm/ui/e/be;->c:Lcom/bbm/ui/e/bd;
iget-wide v2, v2, Lcom/bbm/ui/e/bd;->a:J
sub-long/2addr v0, v2
iget-object v2, p0, Lcom/bbm/ui/e/be;->c:Lcom/bbm/ui/e/bd;
iget-wide v2, v2, Lcom/bbm/ui/e/bd;->b:J
sub-long v0, v2, v0
:goto_12
const-wide/16 v2, 0x0
cmp-long v2, v0, v2
if-ltz v2, :cond_63
:try_start_18
iget-object v2, p0, Lcom/bbm/ui/e/be;->a:Ljava/lang/String;
iget-object v3, p0, Lcom/bbm/ui/e/be;->c:Lcom/bbm/ui/e/bd;
iget-object v3, v3, Lcom/bbm/ui/e/bd;->d:Lcom/bbm/ui/e/au;
invoke-static {v3}, Lcom/bbm/ui/e/au;->l(Lcom/bbm/ui/e/au;)Lcom/bbm/util/cr;
move-result-object v3
invoke-virtual {v3}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_63
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Integer;
const/4 v3, 0x0
long-to-int v0, v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
aput-object v0, v2, v3
iget-object v0, p0, Lcom/bbm/util/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
if-nez v0, :cond_4e
sget-object v0, Lcom/bbm/util/b;->h:Lcom/bbm/util/h;
const/4 v1, 0x2
new-instance v3, Lcom/bbm/util/g;
invoke-direct {v3, p0, v2}, Lcom/bbm/util/g;-><init>(Lcom/bbm/util/b;[Ljava/lang/Object;)V
invoke-virtual {v0, v1, v3}, Lcom/bbm/util/h;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
:cond_4e
const-wide/16 v0, 0x21
invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v0
iget-object v2, p0, Lcom/bbm/ui/e/be;->c:Lcom/bbm/ui/e/bd;
iget-wide v2, v2, Lcom/bbm/ui/e/bd;->a:J
sub-long/2addr v0, v2
iget-object v2, p0, Lcom/bbm/ui/e/be;->c:Lcom/bbm/ui/e/bd;
iget-wide v2, v2, Lcom/bbm/ui/e/bd;->b:J
:try_end_60
.catchall {:try_start_18 .. :try_end_60} :catchall_a0
.catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_60} :catch_81
sub-long v0, v2, v0
goto :goto_12
:cond_63
iget-object v0, p0, Lcom/bbm/ui/e/be;->c:Lcom/bbm/ui/e/bd;
iget-object v0, v0, Lcom/bbm/ui/e/bd;->d:Lcom/bbm/ui/e/au;
invoke-static {v0}, Lcom/bbm/ui/e/au;->l(Lcom/bbm/ui/e/au;)Lcom/bbm/util/cr;
move-result-object v0
const-string v1, ""
invoke-virtual {v0, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/ui/e/be;->c:Lcom/bbm/ui/e/bd;
iget-object v0, v0, Lcom/bbm/ui/e/bd;->d:Lcom/bbm/ui/e/au;
invoke-static {v0}, Lcom/bbm/ui/e/au;->m(Lcom/bbm/ui/e/au;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/bbm/ui/e/bf;
invoke-direct {v1, p0}, Lcom/bbm/ui/e/bf;-><init>(Lcom/bbm/ui/e/be;)V
invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:goto_80
return-object v4
:catch_81
move-exception v0
iget-object v0, p0, Lcom/bbm/ui/e/be;->c:Lcom/bbm/ui/e/bd;
iget-object v0, v0, Lcom/bbm/ui/e/bd;->d:Lcom/bbm/ui/e/au;
invoke-static {v0}, Lcom/bbm/ui/e/au;->l(Lcom/bbm/ui/e/au;)Lcom/bbm/util/cr;
move-result-object v0
const-string v1, ""
invoke-virtual {v0, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/ui/e/be;->c:Lcom/bbm/ui/e/bd;
iget-object v0, v0, Lcom/bbm/ui/e/bd;->d:Lcom/bbm/ui/e/au;
invoke-static {v0}, Lcom/bbm/ui/e/au;->m(Lcom/bbm/ui/e/au;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/bbm/ui/e/bf;
invoke-direct {v1, p0}, Lcom/bbm/ui/e/bf;-><init>(Lcom/bbm/ui/e/be;)V
invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
goto :goto_80
:catchall_a0
move-exception v0
iget-object v0, p0, Lcom/bbm/ui/e/be;->c:Lcom/bbm/ui/e/bd;
iget-object v0, v0, Lcom/bbm/ui/e/bd;->d:Lcom/bbm/ui/e/au;
invoke-static {v0}, Lcom/bbm/ui/e/au;->l(Lcom/bbm/ui/e/au;)Lcom/bbm/util/cr;
move-result-object v0
const-string v1, ""
invoke-virtual {v0, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/ui/e/be;->c:Lcom/bbm/ui/e/bd;
iget-object v0, v0, Lcom/bbm/ui/e/bd;->d:Lcom/bbm/ui/e/au;
invoke-static {v0}, Lcom/bbm/ui/e/au;->m(Lcom/bbm/ui/e/au;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/bbm/ui/e/bf;
invoke-direct {v1, p0}, Lcom/bbm/ui/e/bf;-><init>(Lcom/bbm/ui/e/be;)V
invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
goto :goto_80
.end method
.method protected final synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-direct {p0}, Lcom/bbm/ui/e/be;->b()Ljava/lang/Void;
move-result-object v0
return-object v0
.end method
.method protected final synthetic b([Ljava/lang/Object;)V
.registers 4
check-cast p1, [Ljava/lang/Integer;
iget-object v0, p0, Lcom/bbm/ui/e/be;->c:Lcom/bbm/ui/e/bd;
iget-object v0, v0, Lcom/bbm/ui/e/bd;->c:Landroid/widget/ProgressBar;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/bbm/ui/e/be;->c:Lcom/bbm/ui/e/bd;
iget-object v0, v0, Lcom/bbm/ui/e/bd;->c:Landroid/widget/ProgressBar;
const/4 v1, 0x0
aget-object v1, p1, v1
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
:cond_16
return-void
.end method