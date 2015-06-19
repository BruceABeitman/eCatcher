.class public final Lcom/squareup/okhttp/q;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Ljava/util/Set;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/LinkedHashSet;
invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V
iput-object v0, p0, Lcom/squareup/okhttp/q;->a:Ljava/util/Set;
return-void
.end method
.method public final declared-synchronized a(Lcom/squareup/okhttp/p;)V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/squareup/okhttp/q;->a:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-void
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized b(Lcom/squareup/okhttp/p;)V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/squareup/okhttp/q;->a:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-void
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized c(Lcom/squareup/okhttp/p;)Z
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/squareup/okhttp/q;->a:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_9
move-result v0
monitor-exit p0
return v0
:catchall_9
move-exception v0
monitor-exit p0
throw v0
.end method