.class final Lcom/bbm/n/e;
.super Ljava/lang/Object;
.source "MediaCallManager.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/n/b;
.method constructor <init>(Lcom/bbm/n/b;)V
.registers 2
iput-object p1, p0, Lcom/bbm/n/e;->a:Lcom/bbm/n/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 6
iget-object v0, p0, Lcom/bbm/n/e;->a:Lcom/bbm/n/b;
invoke-static {v0}, Lcom/bbm/n/b;->a(Lcom/bbm/n/b;)Lcom/bbm/j/t;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/t;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
if-nez v0, :cond_13
:goto_12
return-void
:cond_13
iget-object v0, p0, Lcom/bbm/n/e;->a:Lcom/bbm/n/b;
invoke-static {v0}, Lcom/bbm/n/b;->j(Lcom/bbm/n/b;)Lcom/bbm/j/t;
move-result-object v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
iget-object v3, p0, Lcom/bbm/n/e;->a:Lcom/bbm/n/b;
invoke-static {v3}, Lcom/bbm/n/b;->h(Lcom/bbm/n/b;)J
move-result-wide v3
sub-long/2addr v1, v3
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/j/t;->a(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/n/e;->a:Lcom/bbm/n/b;
invoke-static {v0}, Lcom/bbm/n/b;->k(Lcom/bbm/n/b;)Landroid/os/Handler;
move-result-object v0
const-wide/16 v1, 0x3e8
invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
goto :goto_12
.end method