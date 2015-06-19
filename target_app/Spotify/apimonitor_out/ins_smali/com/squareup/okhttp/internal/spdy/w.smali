.class final Lcom/squareup/okhttp/internal/spdy/w;
.super Lcom/squareup/okhttp/internal/j;
.source "SourceFile"
.implements Lcom/squareup/okhttp/internal/spdy/b;
.field final synthetic a:Lcom/squareup/okhttp/internal/spdy/u;
.method private constructor <init>(Lcom/squareup/okhttp/internal/spdy/u;)V
.registers 6
iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
const-string v0, "OkHttp %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/u;->a(Lcom/squareup/okhttp/internal/spdy/u;)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/internal/j;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V
return-void
.end method
.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/spdy/u;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/w;-><init>(Lcom/squareup/okhttp/internal/spdy/u;)V
return-void
.end method
.method protected final a()V
.registers 6
sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->g:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->g:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
:try_start_4
iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
iget-boolean v1, v1, Lcom/squareup/okhttp/internal/spdy/u;->b:Z
if-nez v1, :cond_11
iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
iget-object v1, v1, Lcom/squareup/okhttp/internal/spdy/u;->g:Lcom/squareup/okhttp/internal/spdy/a;
invoke-interface {v1}, Lcom/squareup/okhttp/internal/spdy/a;->a()V
:cond_11
iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
iget-object v1, v1, Lcom/squareup/okhttp/internal/spdy/u;->g:Lcom/squareup/okhttp/internal/spdy/a;
invoke-interface {v1, p0}, Lcom/squareup/okhttp/internal/spdy/a;->a(Lcom/squareup/okhttp/internal/spdy/b;)Z
move-result v1
if-nez v1, :cond_11
sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->a:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
:try_end_1f
.catchall {:try_start_4 .. :try_end_1f} :catchall_32
.catch Ljava/io/IOException; {:try_start_4 .. :try_end_1f} :catch_25
:try_start_1f
iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-static {v2, v0, v1}, Lcom/squareup/okhttp/internal/spdy/u;->a(Lcom/squareup/okhttp/internal/spdy/u;Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
:try_end_24
.catch Ljava/io/IOException; {:try_start_1f .. :try_end_24} :catch_40
:goto_24
return-void
:catch_25
move-exception v1
:try_start_26
sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->b:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
:try_end_28
.catchall {:try_start_26 .. :try_end_28} :catchall_32
:try_start_28
sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->b:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
:try_start_2a
:try_end_2a
.catchall {:try_start_28 .. :try_end_2a} :catchall_3e
iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-static {v2, v1, v0}, Lcom/squareup/okhttp/internal/spdy/u;->a(Lcom/squareup/okhttp/internal/spdy/u;Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
:try_end_2f
.catch Ljava/io/IOException; {:try_start_2a .. :try_end_2f} :catch_30
goto :goto_24
:catch_30
move-exception v0
goto :goto_24
:catchall_32
move-exception v1
move-object v4, v1
move-object v1, v0
move-object v0, v4
:goto_36
:try_start_36
iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-static {v3, v1, v2}, Lcom/squareup/okhttp/internal/spdy/u;->a(Lcom/squareup/okhttp/internal/spdy/u;Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
:try_end_3b
.catch Ljava/io/IOException; {:try_start_36 .. :try_end_3b} :catch_3c
:goto_3b
throw v0
:catch_3c
move-exception v1
goto :goto_3b
:catchall_3e
move-exception v0
goto :goto_36
:catch_40
move-exception v0
goto :goto_24
.end method
.method public final a(IJ)V
.registers 8
if-nez p1, :cond_16
iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
monitor-enter v1
:try_start_5
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
iget-wide v2, v0, Lcom/squareup/okhttp/internal/spdy/u;->d:J
add-long/2addr v2, p2
iput-wide v2, v0, Lcom/squareup/okhttp/internal/spdy/u;->d:J
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
monitor-exit v1
:cond_12
:goto_12
:try_end_12
.catchall {:try_start_5 .. :try_end_12} :catchall_13
return-void
:catchall_13
move-exception v0
monitor-exit v1
throw v0
:cond_16
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/spdy/u;->a(I)Lcom/squareup/okhttp/internal/spdy/x;
move-result-object v1
if-eqz v1, :cond_12
monitor-enter v1
:try_start_1f
invoke-virtual {v1, p2, p3}, Lcom/squareup/okhttp/internal/spdy/x;->b(J)V
monitor-exit v1
:try_end_23
.catchall {:try_start_1f .. :try_end_23} :catchall_24
goto :goto_12
:catchall_24
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(ILcom/squareup/okhttp/internal/a/d;)V
.registers 7
invoke-virtual {p2}, Lcom/squareup/okhttp/internal/a/d;->e()I
iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
monitor-enter v2
:try_start_6
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/u;->i(Lcom/squareup/okhttp/internal/spdy/u;)Z
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/u;->e(Lcom/squareup/okhttp/internal/spdy/u;)Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_19
:cond_19
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4f
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
if-le v1, p1, :cond_19
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/squareup/okhttp/internal/spdy/x;
invoke-virtual {v1}, Lcom/squareup/okhttp/internal/spdy/x;->b()Z
move-result v1
if-eqz v1, :cond_19
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/squareup/okhttp/internal/spdy/x;
sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->k:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/x;->c(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
invoke-interface {v3}, Ljava/util/Iterator;->remove()V
:try_end_4b
.catchall {:try_start_6 .. :try_end_4b} :catchall_4c
goto :goto_19
:catchall_4c
move-exception v0
monitor-exit v2
throw v0
:cond_4f
:try_start_4f
monitor-exit v2
:try_end_50
.catchall {:try_start_4f .. :try_end_50} :catchall_4c
return-void
.end method
.method public final a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
.registers 4
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-static {v0, p1}, Lcom/squareup/okhttp/internal/spdy/u;->a(Lcom/squareup/okhttp/internal/spdy/u;I)Z
move-result v0
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-static {v0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/u;->a(Lcom/squareup/okhttp/internal/spdy/u;ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
:goto_d
:cond_d
return-void
:cond_e
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/spdy/u;->b(I)Lcom/squareup/okhttp/internal/spdy/x;
move-result-object v0
if-eqz v0, :cond_d
invoke-virtual {v0, p2}, Lcom/squareup/okhttp/internal/spdy/x;->c(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
goto :goto_d
.end method
.method public final a(ILjava/util/List;)V
.registers 4
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-static {v0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/u;->a(Lcom/squareup/okhttp/internal/spdy/u;ILjava/util/List;)V
return-void
.end method
.method public final a(ZII)V
.registers 5
if-eqz p1, :cond_e
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-static {v0, p2}, Lcom/squareup/okhttp/internal/spdy/u;->c(Lcom/squareup/okhttp/internal/spdy/u;I)Lcom/squareup/okhttp/internal/spdy/o;
move-result-object v0
if-eqz v0, :cond_d
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/o;->b()V
:goto_d
:cond_d
return-void
:cond_e
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-static {v0, p2, p3}, Lcom/squareup/okhttp/internal/spdy/u;->a(Lcom/squareup/okhttp/internal/spdy/u;II)V
goto :goto_d
.end method
.method public final a(ZILcom/squareup/okhttp/internal/a/c;I)V
.registers 7
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-static {v0, p2}, Lcom/squareup/okhttp/internal/spdy/u;->a(Lcom/squareup/okhttp/internal/spdy/u;I)Z
move-result v0
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-static {v0, p2, p3, p4, p1}, Lcom/squareup/okhttp/internal/spdy/u;->a(Lcom/squareup/okhttp/internal/spdy/u;ILcom/squareup/okhttp/internal/a/c;IZ)V
:goto_d
:cond_d
return-void
:cond_e
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-virtual {v0, p2}, Lcom/squareup/okhttp/internal/spdy/u;->a(I)Lcom/squareup/okhttp/internal/spdy/x;
move-result-object v0
if-nez v0, :cond_22
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->c:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
invoke-virtual {v0, p2, v1}, Lcom/squareup/okhttp/internal/spdy/u;->a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
int-to-long v0, p4
invoke-interface {p3, v0, v1}, Lcom/squareup/okhttp/internal/a/c;->b(J)V
goto :goto_d
:cond_22
invoke-virtual {v0, p3, p4}, Lcom/squareup/okhttp/internal/spdy/x;->a(Lcom/squareup/okhttp/internal/a/c;I)V
if-eqz p1, :cond_d
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/x;->g()V
goto :goto_d
.end method
.method public final a(ZLcom/squareup/okhttp/internal/spdy/q;)V
.registers 14
const-wide/16 v3, 0x0
const/4 v0, 0x0
iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
monitor-enter v5
:try_start_6
iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
iget-object v1, v1, Lcom/squareup/okhttp/internal/spdy/u;->f:Lcom/squareup/okhttp/internal/spdy/q;
invoke-virtual {v1}, Lcom/squareup/okhttp/internal/spdy/q;->d()I
move-result v1
if-eqz p1, :cond_17
iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
iget-object v2, v2, Lcom/squareup/okhttp/internal/spdy/u;->f:Lcom/squareup/okhttp/internal/spdy/q;
invoke-virtual {v2}, Lcom/squareup/okhttp/internal/spdy/q;->a()V
:cond_17
iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
iget-object v2, v2, Lcom/squareup/okhttp/internal/spdy/u;->f:Lcom/squareup/okhttp/internal/spdy/q;
invoke-virtual {v2, p2}, Lcom/squareup/okhttp/internal/spdy/q;->a(Lcom/squareup/okhttp/internal/spdy/q;)V
iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
iget-object v2, v2, Lcom/squareup/okhttp/internal/spdy/u;->a:Lcom/squareup/okhttp/Protocol;
sget-object v6, Lcom/squareup/okhttp/Protocol;->a:Lcom/squareup/okhttp/Protocol;
if-ne v2, v6, :cond_40
invoke-static {}, Lcom/squareup/okhttp/internal/spdy/u;->f()Ljava/util/concurrent/ExecutorService;
move-result-object v2
new-instance v6, Lcom/squareup/okhttp/internal/spdy/w$2;
const-string v7, "OkHttp %s ACK Settings"
const/4 v8, 0x1
new-array v8, v8, [Ljava/lang/Object;
const/4 v9, 0x0
iget-object v10, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-static {v10}, Lcom/squareup/okhttp/internal/spdy/u;->a(Lcom/squareup/okhttp/internal/spdy/u;)Ljava/lang/String;
move-result-object v10
aput-object v10, v8, v9
invoke-direct {v6, p0, v7, v8}, Lcom/squareup/okhttp/internal/spdy/w$2;-><init>(Lcom/squareup/okhttp/internal/spdy/w;Ljava/lang/String;[Ljava/lang/Object;)V
invoke-interface {v2, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
:cond_40
iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
iget-object v2, v2, Lcom/squareup/okhttp/internal/spdy/u;->f:Lcom/squareup/okhttp/internal/spdy/q;
invoke-virtual {v2}, Lcom/squareup/okhttp/internal/spdy/q;->d()I
move-result v2
const/4 v6, -0x1
if-eq v2, v6, :cond_c1
if-eq v2, v1, :cond_c1
sub-int v1, v2, v1
int-to-long v1, v1
iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-static {v6}, Lcom/squareup/okhttp/internal/spdy/u;->g(Lcom/squareup/okhttp/internal/spdy/u;)Z
move-result v6
if-nez v6, :cond_6b
iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
iget-wide v7, v6, Lcom/squareup/okhttp/internal/spdy/u;->d:J
add-long/2addr v7, v1
iput-wide v7, v6, Lcom/squareup/okhttp/internal/spdy/u;->d:J
cmp-long v7, v1, v3
if-lez v7, :cond_66
invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V
:cond_66
iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-static {v6}, Lcom/squareup/okhttp/internal/spdy/u;->h(Lcom/squareup/okhttp/internal/spdy/u;)Z
:cond_6b
iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-static {v6}, Lcom/squareup/okhttp/internal/spdy/u;->e(Lcom/squareup/okhttp/internal/spdy/u;)Ljava/util/Map;
move-result-object v6
invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z
move-result v6
if-nez v6, :cond_93
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/u;->e(Lcom/squareup/okhttp/internal/spdy/u;)Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-static {v6}, Lcom/squareup/okhttp/internal/spdy/u;->e(Lcom/squareup/okhttp/internal/spdy/u;)Ljava/util/Map;
move-result-object v6
invoke-interface {v6}, Ljava/util/Map;->size()I
move-result v6
new-array v6, v6, [Lcom/squareup/okhttp/internal/spdy/x;
invoke-interface {v0, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/squareup/okhttp/internal/spdy/x;
:cond_93
:goto_93
monitor-exit v5
:try_end_94
.catchall {:try_start_6 .. :try_end_94} :catchall_bd
if-eqz v0, :cond_c0
cmp-long v0, v1, v3
if-eqz v0, :cond_c0
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/u;->e(Lcom/squareup/okhttp/internal/spdy/u;)Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_a8
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_c0
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/squareup/okhttp/internal/spdy/x;
monitor-enter v0
:try_start_b5
invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/x;->b(J)V
monitor-exit v0
:try_end_b9
.catchall {:try_start_b5 .. :try_end_b9} :catchall_ba
goto :goto_a8
:catchall_ba
move-exception v1
monitor-exit v0
throw v1
:catchall_bd
move-exception v0
monitor-exit v5
throw v0
:cond_c0
return-void
:cond_c1
move-wide v1, v3
goto :goto_93
.end method
.method public final a(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V
.registers 15
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-static {v2, p3}, Lcom/squareup/okhttp/internal/spdy/u;->a(Lcom/squareup/okhttp/internal/spdy/u;I)Z
move-result v2
if-eqz v2, :cond_10
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-static {v0, p3, p5, p2}, Lcom/squareup/okhttp/internal/spdy/u;->a(Lcom/squareup/okhttp/internal/spdy/u;ILjava/util/List;Z)V
:cond_f
:goto_f
return-void
:cond_10
iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
monitor-enter v7
:try_start_13
iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/u;->b(Lcom/squareup/okhttp/internal/spdy/u;)Z
move-result v2
if-eqz v2, :cond_20
monitor-exit v7
:try_end_1c
.catchall {:try_start_13 .. :try_end_1c} :catchall_1d
goto :goto_f
:catchall_1d
move-exception v0
monitor-exit v7
throw v0
:try_start_20
:cond_20
iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-virtual {v2, p3}, Lcom/squareup/okhttp/internal/spdy/u;->a(I)Lcom/squareup/okhttp/internal/spdy/x;
move-result-object v2
if-nez v2, :cond_96
sget-object v2, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->b:Lcom/squareup/okhttp/internal/spdy/HeadersMode;
if-eq p6, v2, :cond_30
sget-object v2, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->c:Lcom/squareup/okhttp/internal/spdy/HeadersMode;
if-ne p6, v2, :cond_31
:cond_30
move v1, v0
:cond_31
if-eqz v1, :cond_3c
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->c:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
invoke-virtual {v0, p3, v1}, Lcom/squareup/okhttp/internal/spdy/u;->a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
monitor-exit v7
goto :goto_f
:cond_3c
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/u;->c(Lcom/squareup/okhttp/internal/spdy/u;)I
move-result v0
if-gt p3, v0, :cond_46
monitor-exit v7
goto :goto_f
:cond_46
rem-int/lit8 v0, p3, 0x2
iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/u;->d(Lcom/squareup/okhttp/internal/spdy/u;)I
move-result v1
rem-int/lit8 v1, v1, 0x2
if-ne v0, v1, :cond_54
monitor-exit v7
goto :goto_f
:cond_54
new-instance v0, Lcom/squareup/okhttp/internal/spdy/x;
iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
move v1, p3
move v3, p1
move v4, p2
move v5, p4
move-object v6, p5
invoke-direct/range {v0 .. v6}, Lcom/squareup/okhttp/internal/spdy/x;-><init>(ILcom/squareup/okhttp/internal/spdy/u;ZZILjava/util/List;)V
iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-static {v1, p3}, Lcom/squareup/okhttp/internal/spdy/u;->b(Lcom/squareup/okhttp/internal/spdy/u;I)I
iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/u;->e(Lcom/squareup/okhttp/internal/spdy/u;)Ljava/util/Map;
move-result-object v1
invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {}, Lcom/squareup/okhttp/internal/spdy/u;->f()Ljava/util/concurrent/ExecutorService;
move-result-object v1
new-instance v2, Lcom/squareup/okhttp/internal/spdy/w$1;
const-string v3, "OkHttp %s stream %d"
const/4 v4, 0x2
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-static {v6}, Lcom/squareup/okhttp/internal/spdy/u;->a(Lcom/squareup/okhttp/internal/spdy/u;)Ljava/lang/String;
move-result-object v6
aput-object v6, v4, v5
const/4 v5, 0x1
invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
invoke-direct {v2, p0, v3, v4, v0}, Lcom/squareup/okhttp/internal/spdy/w$1;-><init>(Lcom/squareup/okhttp/internal/spdy/w;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/spdy/x;)V
invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
monitor-exit v7
:try_end_94
.catchall {:try_start_20 .. :try_end_94} :catchall_1d
goto/16 :goto_f
:cond_96
monitor-exit v7
sget-object v3, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->a:Lcom/squareup/okhttp/internal/spdy/HeadersMode;
if-ne p6, v3, :cond_a9
:goto_9b
if-eqz v0, :cond_ab
sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->b:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
invoke-virtual {v2, v0}, Lcom/squareup/okhttp/internal/spdy/x;->b(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/w;->a:Lcom/squareup/okhttp/internal/spdy/u;
invoke-virtual {v0, p3}, Lcom/squareup/okhttp/internal/spdy/u;->b(I)Lcom/squareup/okhttp/internal/spdy/x;
goto/16 :goto_f
:cond_a9
move v0, v1
goto :goto_9b
:cond_ab
invoke-virtual {v2, p5, p6}, Lcom/squareup/okhttp/internal/spdy/x;->a(Ljava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V
if-eqz p2, :cond_f
invoke-virtual {v2}, Lcom/squareup/okhttp/internal/spdy/x;->g()V
goto/16 :goto_f
.end method