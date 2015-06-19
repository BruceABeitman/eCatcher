.class public abstract Lcom/d/a/a/b/b;
.super Lcom/d/a/a/b/a;
.source "LimitedMemoryCache.java"
.field private final a:I
.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;
.field private final c:Ljava/util/List;
.method public constructor <init>(I)V
.registers 6
invoke-direct {p0}, Lcom/d/a/a/b/a;-><init>()V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/d/a/a/b/b;->c:Ljava/util/List;
iput p1, p0, Lcom/d/a/a/b/b;->a:I
new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;
invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V
iput-object v0, p0, Lcom/d/a/a/b/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;
const/high16 v0, 0x100
if-le p1, v0, :cond_2c
const-string v0, "You set too large memory cache size (more than %1$d Mb)"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
const/16 v3, 0x10
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/d/a/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_2c
return-void
.end method
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 8
const/4 v0, 0x0
invoke-virtual {p0, p2}, Lcom/d/a/a/b/b;->d(Ljava/lang/Object;)I
move-result v2
iget v3, p0, Lcom/d/a/a/b/b;->a:I
iget-object v1, p0, Lcom/d/a/a/b/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
move-result v1
if-ge v2, v3, :cond_37
move v0, v1
:goto_10
:cond_10
add-int v1, v0, v2
if-le v1, v3, :cond_2c
invoke-virtual {p0}, Lcom/d/a/a/b/b;->b()Ljava/lang/Object;
move-result-object v1
iget-object v4, p0, Lcom/d/a/a/b/b;->c:Ljava/util/List;
invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_10
iget-object v0, p0, Lcom/d/a/a/b/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {p0, v1}, Lcom/d/a/a/b/b;->d(Ljava/lang/Object;)I
move-result v1
neg-int v1, v1
invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I
move-result v0
goto :goto_10
:cond_2c
iget-object v0, p0, Lcom/d/a/a/b/b;->c:Ljava/util/List;
invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/d/a/a/b/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I
const/4 v0, 0x1
:cond_37
invoke-super {p0, p1, p2}, Lcom/d/a/a/b/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
return v0
.end method
.method public abstract b()Ljava/lang/Object;
.end method
.method public b(Ljava/lang/Object;)V
.registers 4
invoke-super {p0, p1}, Lcom/d/a/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_18
iget-object v1, p0, Lcom/d/a/a/b/b;->c:Ljava/util/List;
invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_18
iget-object v1, p0, Lcom/d/a/a/b/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {p0, v0}, Lcom/d/a/a/b/b;->d(Ljava/lang/Object;)I
move-result v0
neg-int v0, v0
invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I
:cond_18
invoke-super {p0, p1}, Lcom/d/a/a/b/a;->b(Ljava/lang/Object;)V
return-void
.end method
.method public abstract d(Ljava/lang/Object;)I
.end method