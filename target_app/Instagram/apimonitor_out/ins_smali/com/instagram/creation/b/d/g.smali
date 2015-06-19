.class final Lcom/instagram/creation/b/d/g;
.super Ljava/lang/Object;
.source "PendingMediaStoreSerializer.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/creation/b/d/c;
.method constructor <init>(Lcom/instagram/creation/b/d/c;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/b/d/g;->a:Lcom/instagram/creation/b/d/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
iget-object v0, p0, Lcom/instagram/creation/b/d/g;->a:Lcom/instagram/creation/b/d/c;
invoke-static {v0}, Lcom/instagram/creation/b/d/c;->b(Lcom/instagram/creation/b/d/c;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_7
iget-object v0, p0, Lcom/instagram/creation/b/d/g;->a:Lcom/instagram/creation/b/d/c;
const/4 v2, 0x1
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-static {v0, v2}, Lcom/instagram/creation/b/d/c;->a(Lcom/instagram/creation/b/d/c;Ljava/lang/Boolean;)Ljava/lang/Boolean;
iget-object v0, p0, Lcom/instagram/creation/b/d/g;->a:Lcom/instagram/creation/b/d/c;
invoke-static {v0}, Lcom/instagram/creation/b/d/c;->c(Lcom/instagram/creation/b/d/c;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_1b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2e
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Runnable;
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
:try_end_2a
.catchall {:try_start_7 .. :try_end_2a} :catchall_2b
goto :goto_1b
:catchall_2b
move-exception v0
monitor-exit v1
throw v0
:try_start_2e
:cond_2e
iget-object v0, p0, Lcom/instagram/creation/b/d/g;->a:Lcom/instagram/creation/b/d/c;
invoke-static {v0}, Lcom/instagram/creation/b/d/c;->c(Lcom/instagram/creation/b/d/c;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->clear()V
monitor-exit v1
:try_end_38
.catchall {:try_start_2e .. :try_end_38} :catchall_2b
return-void
.end method