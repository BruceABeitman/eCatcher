.class final Lcom/bbm/u;
.super Ljava/lang/Object;
.source "LayoutTimer.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/t;
.method constructor <init>(Lcom/bbm/t;)V
.registers 2
iput-object p1, p0, Lcom/bbm/u;->a:Lcom/bbm/t;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 7
const/4 v5, 0x0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-object v2, p0, Lcom/bbm/u;->a:Lcom/bbm/t;
iget-wide v2, v2, Lcom/bbm/t;->c:J
sub-long/2addr v0, v2
iget-object v2, p0, Lcom/bbm/u;->a:Lcom/bbm/t;
iget-wide v2, v2, Lcom/bbm/t;->d:J
cmp-long v0, v0, v2
if-gez v0, :cond_27
iget-object v0, p0, Lcom/bbm/u;->a:Lcom/bbm/t;
const/4 v1, 0x1
iput-boolean v1, v0, Lcom/bbm/t;->f:Z
iget-object v0, p0, Lcom/bbm/u;->a:Lcom/bbm/t;
iget-object v0, v0, Lcom/bbm/t;->a:Landroid/os/Handler;
iget-object v1, p0, Lcom/bbm/u;->a:Lcom/bbm/t;
iget-object v1, v1, Lcom/bbm/t;->g:Ljava/lang/Runnable;
iget-object v2, p0, Lcom/bbm/u;->a:Lcom/bbm/t;
iget-wide v2, v2, Lcom/bbm/t;->d:J
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:goto_26
return-void
:cond_27
iget-object v0, p0, Lcom/bbm/u;->a:Lcom/bbm/t;
iput-boolean v5, v0, Lcom/bbm/t;->f:Z
iget-object v0, p0, Lcom/bbm/u;->a:Lcom/bbm/t;
iget-wide v0, v0, Lcom/bbm/t;->c:J
iget-object v2, p0, Lcom/bbm/u;->a:Lcom/bbm/t;
iget-wide v2, v2, Lcom/bbm/t;->b:J
sub-long/2addr v0, v2
iget-object v2, p0, Lcom/bbm/u;->a:Lcom/bbm/t;
const-wide/16 v3, 0x0
iput-wide v3, v2, Lcom/bbm/t;->b:J
iget-object v2, p0, Lcom/bbm/u;->a:Lcom/bbm/t;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Timer "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, v2, Lcom/bbm/t;->e:Ljava/lang/String;
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " completed. Elapsed time: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-array v1, v5, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_26
.end method