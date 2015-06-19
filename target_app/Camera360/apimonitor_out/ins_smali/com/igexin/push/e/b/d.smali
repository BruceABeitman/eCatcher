.class public Lcom/igexin/push/e/b/d;
.super Lcom/igexin/push/e/b/h;
.field private static a:Lcom/igexin/push/e/b/d;
.method public constructor <init>()V
.registers 3
invoke-static {}, Lcom/igexin/push/core/i;->a()Lcom/igexin/push/core/i;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/i;->b()J
move-result-wide v0
invoke-direct {p0, v0, v1}, Lcom/igexin/push/e/b/h;-><init>(J)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/igexin/push/e/b/d;->A:Z
return-void
.end method
.method public static g()Lcom/igexin/push/e/b/d;
.registers 1
sget-object v0, Lcom/igexin/push/e/b/d;->a:Lcom/igexin/push/e/b/d;
if-nez v0, :cond_b
new-instance v0, Lcom/igexin/push/e/b/d;
invoke-direct {v0}, Lcom/igexin/push/e/b/d;-><init>()V
sput-object v0, Lcom/igexin/push/e/b/d;->a:Lcom/igexin/push/e/b/d;
:cond_b
sget-object v0, Lcom/igexin/push/e/b/d;->a:Lcom/igexin/push/e/b/d;
return-object v0
.end method
.method public final a_()I
.registers 2
const v0, -0x7ffffffa
return v0
.end method
.method public c()V
.registers 2
invoke-super {p0}, Lcom/igexin/push/e/b/h;->c()V
iget-boolean v0, p0, Lcom/igexin/push/e/b/d;->x:Z
if-nez v0, :cond_a
invoke-virtual {p0}, Lcom/igexin/push/e/b/d;->h()V
:cond_a
return-void
.end method
.method public d()V
.registers 1
return-void
.end method
.method public h()V
.registers 4
invoke-static {}, Lcom/igexin/push/core/i;->a()Lcom/igexin/push/core/i;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/i;->b()J
move-result-wide v0
sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/push/e/b/d;->a(JLjava/util/concurrent/TimeUnit;)I
return-void
.end method
.method protected i()V
.registers 3
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->A()V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
sput-wide v0, Lcom/igexin/push/core/g;->G:J
sget-boolean v0, Lcom/igexin/push/core/g;->o:Z
if-eqz v0, :cond_23
const-string/jumbo v0, "heartbeatReq"
invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/f;->g()Lcom/igexin/push/core/a/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->f()I
:goto_22
return-void
:cond_23
invoke-virtual {p0}, Lcom/igexin/push/e/b/d;->h()V
goto :goto_22
.end method
.method public j()V
.registers 1
return-void
.end method