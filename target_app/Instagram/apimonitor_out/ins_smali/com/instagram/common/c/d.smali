.class public final Lcom/instagram/common/c/d;
.super Ljava/lang/Object;
.source "BaseIgBroadcastManager.java"
.implements Lcom/instagram/common/c/h;
.field final synthetic a:Lcom/instagram/common/c/b;
.field private final b:Lcom/instagram/common/c/i;
.field private final c:Landroid/content/IntentFilter;
.field private d:Z
.method public constructor <init>(Lcom/instagram/common/c/b;Ljava/util/Map;Landroid/content/IntentFilter;)V
.registers 5
iput-object p1, p0, Lcom/instagram/common/c/d;->a:Lcom/instagram/common/c/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/common/c/d;->d:Z
new-instance v0, Lcom/instagram/common/c/e;
invoke-direct {v0, p0, p2, p1}, Lcom/instagram/common/c/e;-><init>(Lcom/instagram/common/c/d;Ljava/util/Map;Lcom/instagram/common/c/b;)V
iput-object v0, p0, Lcom/instagram/common/c/d;->b:Lcom/instagram/common/c/i;
iput-object p3, p0, Lcom/instagram/common/c/d;->c:Landroid/content/IntentFilter;
return-void
.end method
.method public final declared-synchronized a()Z
.registers 2
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/instagram/common/c/d;->d:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized b()V
.registers 4
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/instagram/common/c/d;->d:Z
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/instagram/common/c/d;->a:Lcom/instagram/common/c/b;
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
const-string v1, "Called registerBroadcastReceiver twice."
invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_14
:try_end_14
.catchall {:try_start_1 .. :try_end_14} :catchall_39
monitor-exit p0
return-void
:cond_16
:try_start_16
iget-object v0, p0, Lcom/instagram/common/c/d;->c:Landroid/content/IntentFilter;
if-nez v0, :cond_3d
new-instance v1, Landroid/content/IntentFilter;
invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V
iget-object v0, p0, Lcom/instagram/common/c/d;->b:Lcom/instagram/common/c/i;
invoke-virtual {v0}, Lcom/instagram/common/c/i;->b()Ljava/lang/Iterable;
move-result-object v0
invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_29
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
:try_end_38
.catchall {:try_start_16 .. :try_end_38} :catchall_39
goto :goto_29
:catchall_39
move-exception v0
monitor-exit p0
throw v0
:cond_3c
move-object v0, v1
:try_start_3d
:cond_3d
iget-object v1, p0, Lcom/instagram/common/c/d;->a:Lcom/instagram/common/c/b;
iget-object v2, p0, Lcom/instagram/common/c/d;->b:Lcom/instagram/common/c/i;
invoke-virtual {v1, v2, v0}, Lcom/instagram/common/c/b;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/common/c/d;->d:Z
:try_end_47
.catchall {:try_start_3d .. :try_end_47} :catchall_39
goto :goto_14
.end method
.method public final declared-synchronized c()V
.registers 3
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/instagram/common/c/d;->d:Z
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/instagram/common/c/d;->a:Lcom/instagram/common/c/b;
iget-object v1, p0, Lcom/instagram/common/c/d;->b:Lcom/instagram/common/c/i;
invoke-virtual {v0, v1}, Lcom/instagram/common/c/b;->a(Landroid/content/BroadcastReceiver;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/common/c/d;->d:Z
:try_end_f
.catchall {:try_start_1 .. :try_end_f} :catchall_11
:cond_f
monitor-exit p0
return-void
:catchall_11
move-exception v0
monitor-exit p0
throw v0
.end method