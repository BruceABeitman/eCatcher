.class public abstract Lcom/igexin/push/e/b/h;
.super Lcom/igexin/a/a/d/d;
.field  c:J
.method public constructor <init>(J)V
.registers 5
const-wide/16 v0, 0x0
invoke-direct {p0, v0, v1, p1, p2}, Lcom/igexin/push/e/b/h;-><init>(JJ)V
return-void
.end method
.method public constructor <init>(JJ)V
.registers 8
const/4 v0, 0x5
invoke-direct {p0, v0}, Lcom/igexin/a/a/d/d;-><init>(I)V
const-wide/16 v0, 0x0
cmp-long v0, p1, v0
if-gtz v0, :cond_14
:goto_a
iput-wide p3, p0, Lcom/igexin/push/e/b/h;->c:J
iget-wide v0, p0, Lcom/igexin/push/e/b/h;->c:J
sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/push/e/b/h;->a(JLjava/util/concurrent/TimeUnit;)I
return-void
:cond_14
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
sub-long v0, p1, v0
add-long/2addr p3, v0
goto :goto_a
.end method
.method public final b()V
.registers 1
invoke-super {p0}, Lcom/igexin/a/a/d/d;->b()V
invoke-virtual {p0}, Lcom/igexin/push/e/b/h;->i()V
return-void
.end method
.method protected e()V
.registers 1
return-void
.end method
.method protected abstract i()V
.end method