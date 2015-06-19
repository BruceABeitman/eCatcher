.class final Lcom/fsck/k9/activity/DateFormatter$1;
.super Ljava/lang/ThreadLocal;
.source "DateFormatter.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V
return-void
.end method
.method public bridge synthetic initialValue()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/fsck/k9/activity/DateFormatter$1;->initialValue()Ljava/util/Map;
move-result-object v0
return-object v0
.end method
.method public declared-synchronized initialValue()Ljava/util/Map;
.registers 2
monitor-enter p0
:try_start_1
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-object v0
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method