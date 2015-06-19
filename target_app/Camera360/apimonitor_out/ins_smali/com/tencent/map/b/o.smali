.class final Lcom/tencent/map/b/o;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field private synthetic a:Lcom/tencent/map/b/n;
.method constructor <init>(Lcom/tencent/map/b/n;)V
.registers 2
iput-object p1, p0, Lcom/tencent/map/b/o;->a:Lcom/tencent/map/b/n;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 5
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-object v2, p0, Lcom/tencent/map/b/o;->a:Lcom/tencent/map/b/n;
invoke-static {v2}, Lcom/tencent/map/b/n;->a(Lcom/tencent/map/b/n;)J
move-result-wide v2
sub-long/2addr v0, v2
const-wide/16 v2, 0x1f40
cmp-long v0, v0, v2
if-gez v0, :cond_12
:goto_11
return-void
:cond_12
iget-object v0, p0, Lcom/tencent/map/b/o;->a:Lcom/tencent/map/b/n;
invoke-static {v0}, Lcom/tencent/map/b/n;->b(Lcom/tencent/map/b/n;)Lcom/tencent/map/b/f;
move-result-object v0
invoke-virtual {v0}, Lcom/tencent/map/b/f;->b()Z
move-result v0
if-eqz v0, :cond_36
iget-object v0, p0, Lcom/tencent/map/b/o;->a:Lcom/tencent/map/b/n;
invoke-static {v0}, Lcom/tencent/map/b/n;->b(Lcom/tencent/map/b/n;)Lcom/tencent/map/b/f;
move-result-object v0
invoke-virtual {v0}, Lcom/tencent/map/b/f;->c()Z
move-result v0
if-eqz v0, :cond_36
iget-object v0, p0, Lcom/tencent/map/b/o;->a:Lcom/tencent/map/b/n;
invoke-static {v0}, Lcom/tencent/map/b/n;->b(Lcom/tencent/map/b/n;)Lcom/tencent/map/b/f;
move-result-object v0
const-wide/16 v1, 0x0
invoke-virtual {v0, v1, v2}, Lcom/tencent/map/b/f;->a(J)V
goto :goto_11
:cond_36
iget-object v0, p0, Lcom/tencent/map/b/o;->a:Lcom/tencent/map/b/n;
invoke-static {v0}, Lcom/tencent/map/b/n;->c(Lcom/tencent/map/b/n;)V
goto :goto_11
.end method