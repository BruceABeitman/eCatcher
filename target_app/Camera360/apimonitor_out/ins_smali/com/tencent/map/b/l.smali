.class final Lcom/tencent/map/b/l;
.super Ljava/lang/Thread;
.field private synthetic a:Lcom/tencent/map/b/m;
.method constructor <init>(Lcom/tencent/map/b/m;)V
.registers 2
iput-object p1, p0, Lcom/tencent/map/b/l;->a:Lcom/tencent/map/b/m;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
iget-object v0, p0, Lcom/tencent/map/b/l;->a:Lcom/tencent/map/b/m;
invoke-static {v0}, Lcom/tencent/map/b/m;->d(Lcom/tencent/map/b/m;)Landroid/telephony/TelephonyManager;
move-result-object v0
if-eqz v0, :cond_2e
iget-object v0, p0, Lcom/tencent/map/b/l;->a:Lcom/tencent/map/b/m;
invoke-static {v0}, Lcom/tencent/map/b/m;->d(Lcom/tencent/map/b/m;)Landroid/telephony/TelephonyManager;
move-result-object v0
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;
move-result-object v0
iget-object v1, p0, Lcom/tencent/map/b/l;->a:Lcom/tencent/map/b/m;
invoke-static {v1}, Lcom/tencent/map/b/m;->e(Lcom/tencent/map/b/m;)[B
move-result-object v1
monitor-enter v1
if-eqz v0, :cond_2d
:try_start_1b
iget-object v2, p0, Lcom/tencent/map/b/l;->a:Lcom/tencent/map/b/m;
invoke-static {v2}, Lcom/tencent/map/b/m;->f(Lcom/tencent/map/b/m;)Ljava/util/List;
move-result-object v2
invoke-interface {v2}, Ljava/util/List;->clear()V
iget-object v2, p0, Lcom/tencent/map/b/l;->a:Lcom/tencent/map/b/m;
invoke-static {v2}, Lcom/tencent/map/b/m;->f(Lcom/tencent/map/b/m;)Ljava/util/List;
move-result-object v2
invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
:cond_2d
monitor-exit v1
:try_end_2e
.catchall {:try_start_1b .. :try_end_2e} :catchall_35
:cond_2e
iget-object v0, p0, Lcom/tencent/map/b/l;->a:Lcom/tencent/map/b/m;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/tencent/map/b/m;->a(Lcom/tencent/map/b/m;Z)Z
return-void
:catchall_35
move-exception v0
monitor-exit v1
throw v0
.end method