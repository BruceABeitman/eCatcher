.class public abstract Lcom/igexin/a/a/d/b;
.super Ljava/lang/Object;
.implements Lcom/igexin/a/a/d/a/g;
.field protected a:Z
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/igexin/a/a/d/b;->a:Z
return-void
.end method
.method public a()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/igexin/a/a/d/b;->a:Z
return-void
.end method
.method public a(JLcom/igexin/a/a/d/d;)Z
.registers 8
sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
iget v1, p3, Lcom/igexin/a/a/d/d;->K:I
int-to-long v1, v1
invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
move-result-wide v0
iget-wide v2, p3, Lcom/igexin/a/a/d/d;->I:J
sub-long v2, p1, v2
cmp-long v0, v0, v2
if-gez v0, :cond_13
const/4 v0, 0x1
:goto_12
return v0
:cond_13
const/4 v0, 0x0
goto :goto_12
.end method
.method public b(JLcom/igexin/a/a/d/d;)J
.registers 8
sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
iget v1, p3, Lcom/igexin/a/a/d/d;->K:I
int-to-long v1, v1
invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
move-result-wide v0
iget-wide v2, p3, Lcom/igexin/a/a/d/d;->I:J
add-long/2addr v0, v2
sub-long/2addr v0, p1
return-wide v0
.end method
.method public b()Z
.registers 2
iget-boolean v0, p0, Lcom/igexin/a/a/d/b;->a:Z
return v0
.end method