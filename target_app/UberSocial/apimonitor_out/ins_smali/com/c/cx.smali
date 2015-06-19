.class public Lcom/c/cx;
.super Ljava/lang/Object;
.implements Lcom/c/db;
.field private a:Ljava/util/ArrayList;
.method public varargs constructor <init>([Lcom/c/df;)V
.registers 6
sget v1, Lcom/c/co;->g:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
array-length v2, p1
invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Lcom/c/cx;->a:Ljava/util/ArrayList;
array-length v2, p1
const/4 v0, 0x0
:cond_f
if-ge v0, v2, :cond_19
aget-object v3, p1, v0
if-nez v3, :cond_1a
:goto_15
add-int/lit8 v0, v0, 0x1
if-eqz v1, :cond_f
:cond_19
return-void
:cond_1a
invoke-interface {v3, p0}, Lcom/c/df;->a(Lcom/c/db;)V
goto :goto_15
.end method
.method public a()Ljava/util/List;
.registers 3
const-wide v0, 0x7fffffffffffffffL
invoke-virtual {p0, v0, v1}, Lcom/c/cx;->a(J)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public declared-synchronized a(J)Ljava/util/List;
.registers 5
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/c/cx;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-eqz v0, :cond_c
invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
:cond_c
iget-object v0, p0, Lcom/c/cx;->a:Ljava/util/ArrayList;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Lcom/c/cx;->a:Ljava/util/ArrayList;
:try_end_15
.catchall {:try_start_1 .. :try_end_15} :catchall_17
monitor-exit p0
return-object v0
:catchall_17
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized a(Lcom/c/df;)V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/c/cx;->a:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_e
iget-object v0, p0, Lcom/c/cx;->a:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_e
invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
:try_end_11
.catchall {:try_start_1 .. :try_end_11} :catchall_13
monitor-exit p0
return-void
:catchall_13
move-exception v0
monitor-exit p0
throw v0
.end method
.method public a(Ljava/util/List;J)V
.registers 8
sget v1, Lcom/c/co;->g:I
invoke-virtual {p0, p2, p3}, Lcom/c/cx;->a(J)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_a
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_21
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/df;
invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_1f
invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_1f
if-eqz v1, :cond_a
:cond_21
return-void
.end method