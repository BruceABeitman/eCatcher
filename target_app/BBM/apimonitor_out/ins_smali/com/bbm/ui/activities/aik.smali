.class final Lcom/bbm/ui/activities/aik;
.super Ljava/lang/Object;
.source "TypingNotificationHelper.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/ui/activities/aij;
.method constructor <init>(Lcom/bbm/ui/activities/aij;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/aik;->a:Lcom/bbm/ui/activities/aij;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/activities/aik;->a:Lcom/bbm/ui/activities/aij;
iget-object v0, v0, Lcom/bbm/ui/activities/aij;->b:Landroid/os/Handler;
iget-object v1, p0, Lcom/bbm/ui/activities/aik;->a:Lcom/bbm/ui/activities/aij;
iget-object v1, v1, Lcom/bbm/ui/activities/aij;->g:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lcom/bbm/ui/activities/aik;->a:Lcom/bbm/ui/activities/aij;
iget v0, v0, Lcom/bbm/ui/activities/aij;->e:I
if-nez v0, :cond_31
iget-object v0, p0, Lcom/bbm/ui/activities/aik;->a:Lcom/bbm/ui/activities/aij;
iget-object v0, v0, Lcom/bbm/ui/activities/aij;->a:Lcom/bbm/d;
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
iget-object v1, p0, Lcom/bbm/ui/activities/aik;->a:Lcom/bbm/ui/activities/aij;
iget-object v1, v1, Lcom/bbm/ui/activities/aij;->d:Ljava/lang/String;
new-instance v2, Lcom/bbm/d/dp;
invoke-direct {v2, v1}, Lcom/bbm/d/dp;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v2}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
:goto_23
iget-object v0, p0, Lcom/bbm/ui/activities/aik;->a:Lcom/bbm/ui/activities/aij;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
iput-wide v1, v0, Lcom/bbm/ui/activities/aij;->f:J
iget-object v0, p0, Lcom/bbm/ui/activities/aik;->a:Lcom/bbm/ui/activities/aij;
const/4 v1, 0x0
iput-boolean v1, v0, Lcom/bbm/ui/activities/aij;->c:Z
return-void
:cond_31
iget-object v0, p0, Lcom/bbm/ui/activities/aik;->a:Lcom/bbm/ui/activities/aij;
iget-object v0, v0, Lcom/bbm/ui/activities/aij;->a:Lcom/bbm/d;
iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v1, p0, Lcom/bbm/ui/activities/aik;->a:Lcom/bbm/ui/activities/aij;
iget-object v1, v1, Lcom/bbm/ui/activities/aij;->d:Ljava/lang/String;
new-instance v2, Lcom/bbm/g/bj;
invoke-direct {v2, v1}, Lcom/bbm/g/bj;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v2}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
goto :goto_23
.end method