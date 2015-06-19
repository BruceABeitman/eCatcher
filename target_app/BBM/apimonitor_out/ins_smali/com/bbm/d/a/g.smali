.class public final Lcom/bbm/d/a/g;
.super Ljava/lang/Object;
.source "LruReferenceCache.java"
.implements Lcom/bbm/d/a/i;
.field private final a:I
.field private final b:Ljava/util/LinkedList;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0xc8
iput v0, p0, Lcom/bbm/d/a/g;->a:I
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/bbm/d/a/g;->b:Ljava/util/LinkedList;
return-void
.end method
.method private declared-synchronized b(Ljava/lang/Object;)V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/bbm/d/a/g;->b:Ljava/util/LinkedList;
invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
:goto_6
iget-object v0, p0, Lcom/bbm/d/a/g;->b:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
move-result v0
iget v1, p0, Lcom/bbm/d/a/g;->a:I
if-le v0, v1, :cond_19
iget-object v0, p0, Lcom/bbm/d/a/g;->b:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
:try_end_15
.catchall {:try_start_1 .. :try_end_15} :catchall_16
goto :goto_6
:catchall_16
move-exception v0
monitor-exit p0
throw v0
:cond_19
monitor-exit p0
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/bbm/d/a/g;->b:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
return-void
.end method
.method public final a(Ljava/lang/Object;)V
.registers 2
invoke-direct {p0, p1}, Lcom/bbm/d/a/g;->b(Ljava/lang/Object;)V
return-void
.end method