.class final Lcom/facebook/AppEventsLogger$3;
.super Ljava/util/TimerTask;
.source "SourceFile"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V
return-void
.end method
.method public final run()V
.registers 5
new-instance v1, Ljava/util/HashSet;
invoke-direct {v1}, Ljava/util/HashSet;-><init>()V
invoke-static {}, Lcom/facebook/AppEventsLogger;->d()Ljava/lang/Object;
move-result-object v2
monitor-enter v2
:try_start_a
invoke-static {}, Lcom/facebook/AppEventsLogger;->e()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_16
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2d
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;
invoke-virtual {v0}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->b()Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
:try_end_29
.catchall {:try_start_a .. :try_end_29} :catchall_2a
goto :goto_16
:catchall_2a
move-exception v0
monitor-exit v2
throw v0
:cond_2d
:try_start_2d
monitor-exit v2
:try_end_2e
.catchall {:try_start_2d .. :try_end_2e} :catchall_2a
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_32
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_43
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const/4 v2, 0x1
invoke-static {v0, v2}, Lcom/facebook/internal/ai;->a(Ljava/lang/String;Z)Lcom/facebook/internal/aj;
goto :goto_32
:cond_43
return-void
.end method