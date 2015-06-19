.class public Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;
.super Ljava/util/AbstractQueue;
.source "LinkedBlockingDeque.java"
.implements Lcom/nostra13/universalimageloader/core/assist/deque/BlockingDeque;
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = -0x56223931da801daL
.field private final capacity:I
.field private transient count:I
.field transient first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
.field transient last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
.field final lock:Ljava/util/concurrent/locks/ReentrantLock;
.field private final notEmpty:Ljava/util/concurrent/locks/Condition;
.field private final notFull:Ljava/util/concurrent/locks/Condition;
.method public constructor <init>()V
.registers 2
const v0, 0x7fffffff
invoke-direct {p0, v0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;-><init>(I)V
return-void
.end method
.method public constructor <init>(I)V
.registers 3
invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V
new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;
invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;
if-gtz p1, :cond_22
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:cond_22
iput p1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->capacity:I
return-void
.end method
.method public constructor <init>(Ljava/util/Collection;)V
.registers 7
const v3, 0x7fffffff
invoke-direct {p0, v3}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;-><init>(I)V
iget-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_b
invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_f
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_3a
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_26
new-instance v3, Ljava/lang/NullPointerException;
invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V
throw v3
:catchall_21
:try_end_21
.catchall {:try_start_b .. :try_end_21} :catchall_21
move-exception v3
invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v3
:cond_26
:try_start_26
new-instance v3, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
invoke-direct {v3, v0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V
invoke-direct {p0, v3}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->linkLast(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
move-result v3
if-nez v3, :cond_f
new-instance v3, Ljava/lang/IllegalStateException;
const-string/jumbo v4, "Deque full"
invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v3
:try_end_3a
.catchall {:try_start_26 .. :try_end_3a} :catchall_21
:cond_3a
invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
return-void
.end method
.method private linkFirst(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
.registers 5
iget v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I
iget v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->capacity:I
if-lt v1, v2, :cond_8
const/4 v1, 0x0
:goto_7
return v1
:cond_8
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
iput-object v0, p1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
iput-object p1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
if-nez v1, :cond_21
iput-object p1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
:goto_14
iget v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;
invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
const/4 v1, 0x1
goto :goto_7
:cond_21
iput-object p1, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
goto :goto_14
.end method
.method private linkLast(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
.registers 5
iget v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I
iget v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->capacity:I
if-lt v1, v2, :cond_8
const/4 v1, 0x0
:goto_7
return v1
:cond_8
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
iput-object v0, p1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
iput-object p1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
if-nez v1, :cond_21
iput-object p1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
:goto_14
iget v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;
invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
const/4 v1, 0x1
goto :goto_7
:cond_21
iput-object p1, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
goto :goto_14
.end method
.method private readObject(Ljava/io/ObjectInputStream;)V
.registers 5
const/4 v2, 0x0
invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V
const/4 v1, 0x0
iput v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I
iput-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
iput-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
:goto_b
invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_12
return-void
:cond_12
invoke-virtual {p0, v0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z
goto :goto_b
.end method
.method private unlinkFirst()Ljava/lang/Object;
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
if-nez v0, :cond_7
move-object v1, v3
:goto_6
return-object v1
:cond_7
iget-object v2, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
iget-object v1, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
iput-object v3, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
iput-object v0, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
iput-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
if-nez v2, :cond_21
iput-object v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
:goto_15
iget v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I
add-int/lit8 v3, v3, -0x1
iput v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I
iget-object v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;
invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V
goto :goto_6
:cond_21
iput-object v3, v2, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
goto :goto_15
.end method
.method private unlinkLast()Ljava/lang/Object;
.registers 5
const/4 v3, 0x0
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
if-nez v1, :cond_7
move-object v0, v3
:goto_6
return-object v0
:cond_7
iget-object v2, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
iget-object v0, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
iput-object v3, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
iput-object v1, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
iput-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
if-nez v2, :cond_21
iput-object v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
:goto_15
iget v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I
add-int/lit8 v3, v3, -0x1
iput v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I
iget-object v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;
invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V
goto :goto_6
:cond_21
iput-object v3, v2, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
goto :goto_15
.end method
.method private writeObject(Ljava/io/ObjectOutputStream;)V
.registers 5
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_5
invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
:goto_a
if-eqz v1, :cond_14
iget-object v2, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
iget-object v1, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
goto :goto_a
:cond_14
const/4 v2, 0x0
invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
:try_end_18
.catchall {:try_start_5 .. :try_end_18} :catchall_1c
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
return-void
:catchall_1c
move-exception v2
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v2
.end method
.method public add(Ljava/lang/Object;)Z
.registers 3
invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->addLast(Ljava/lang/Object;)V
const/4 v0, 0x1
return v0
.end method
.method public addFirst(Ljava/lang/Object;)V
.registers 4
invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_f
new-instance v0, Ljava/lang/IllegalStateException;
const-string/jumbo v1, "Deque full"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
return-void
.end method
.method public addLast(Ljava/lang/Object;)V
.registers 4
invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_f
new-instance v0, Ljava/lang/IllegalStateException;
const-string/jumbo v1, "Deque full"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
return-void
.end method
.method public clear()V
.registers 5
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_5
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
:goto_7
if-eqz v0, :cond_16
const/4 v3, 0x0
iput-object v3, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
iget-object v2, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
const/4 v3, 0x0
iput-object v3, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
const/4 v3, 0x0
iput-object v3, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
move-object v0, v2
goto :goto_7
:cond_16
const/4 v3, 0x0
iput-object v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
iput-object v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
const/4 v3, 0x0
iput v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I
iget-object v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;
invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V
:try_end_23
.catchall {:try_start_5 .. :try_end_23} :catchall_27
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
return-void
:catchall_27
move-exception v3
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v3
.end method
.method public contains(Ljava/lang/Object;)Z
.registers 6
const/4 v2, 0x0
if-nez p1, :cond_4
:goto_3
return v2
:cond_4
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_9
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
:goto_b
if-eqz v1, :cond_1d
iget-object v3, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
:try_end_12
.catchall {:try_start_9 .. :try_end_12} :catchall_21
move-result v3
if-eqz v3, :cond_1a
const/4 v2, 0x1
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
goto :goto_3
:try_start_1a
:cond_1a
iget-object v1, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
:try_end_1c
.catchall {:try_start_1a .. :try_end_1c} :catchall_21
goto :goto_b
:cond_1d
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
goto :goto_3
:catchall_21
move-exception v2
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v2
.end method
.method public descendingIterator()Ljava/util/Iterator;
.registers 3
new-instance v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;-><init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$1;)V
return-object v0
.end method
.method public drainTo(Ljava/util/Collection;)I
.registers 3
const v0, 0x7fffffff
invoke-virtual {p0, p1, v0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->drainTo(Ljava/util/Collection;I)I
move-result v0
return v0
.end method
.method public drainTo(Ljava/util/Collection;I)I
.registers 7
if-nez p1, :cond_8
new-instance v3, Ljava/lang/NullPointerException;
invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V
throw v3
:cond_8
if-ne p1, p0, :cond_10
new-instance v3, Ljava/lang/IllegalArgumentException;
invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v3
:cond_10
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_15
iget v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I
invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I
move-result v2
const/4 v0, 0x0
:goto_1c
if-ge v0, v2, :cond_2b
iget-object v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
iget-object v3, v3, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
:try_end_28
.catchall {:try_start_15 .. :try_end_28} :catchall_2f
add-int/lit8 v0, v0, 0x1
goto :goto_1c
:cond_2b
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
return v2
:catchall_2f
move-exception v3
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v3
.end method
.method public element()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->getFirst()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getFirst()Ljava/lang/Object;
.registers 3
invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->peekFirst()Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_c
new-instance v1, Ljava/util/NoSuchElementException;
invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V
throw v1
:cond_c
return-object v0
.end method
.method public getLast()Ljava/lang/Object;
.registers 3
invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->peekLast()Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_c
new-instance v1, Ljava/util/NoSuchElementException;
invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V
throw v1
:cond_c
return-object v0
.end method
.method public iterator()Ljava/util/Iterator;
.registers 3
new-instance v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Itr;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Itr;-><init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$1;)V
return-object v0
.end method
.method public offer(Ljava/lang/Object;)Z
.registers 3
invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
.registers 6
invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
move-result v0
return v0
.end method
.method public offerFirst(Ljava/lang/Object;)Z
.registers 5
if-nez p1, :cond_8
new-instance v2, Ljava/lang/NullPointerException;
invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V
throw v2
:cond_8
new-instance v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
invoke-direct {v1, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_12
invoke-direct {p0, v1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->linkFirst(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
:try_end_15
.catchall {:try_start_12 .. :try_end_15} :catchall_1a
move-result v2
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
return v2
:catchall_1a
move-exception v2
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v2
.end method
.method public offerFirst(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
.registers 11
if-nez p1, :cond_8
new-instance v4, Ljava/lang/NullPointerException;
invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V
throw v4
:cond_8
new-instance v3, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
invoke-direct {v3, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V
invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J
move-result-wide v1
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V
:try_start_16
:goto_16
invoke-direct {p0, v3}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->linkFirst(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
:try_end_19
.catchall {:try_start_16 .. :try_end_19} :catchall_33
move-result v4
if-nez v4, :cond_2e
const-wide/16 v4, 0x0
cmp-long v4, v1, v4
if-gtz v4, :cond_27
const/4 v4, 0x0
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
:goto_26
return v4
:cond_27
:try_start_27
iget-object v4, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;
invoke-interface {v4, v1, v2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
:try_end_2c
.catchall {:try_start_27 .. :try_end_2c} :catchall_33
move-result-wide v1
goto :goto_16
:cond_2e
const/4 v4, 0x1
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
goto :goto_26
:catchall_33
move-exception v4
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v4
.end method
.method public offerLast(Ljava/lang/Object;)Z
.registers 5
if-nez p1, :cond_8
new-instance v2, Ljava/lang/NullPointerException;
invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V
throw v2
:cond_8
new-instance v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
invoke-direct {v1, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_12
invoke-direct {p0, v1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->linkLast(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
:try_end_15
.catchall {:try_start_12 .. :try_end_15} :catchall_1a
move-result v2
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
return v2
:catchall_1a
move-exception v2
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v2
.end method
.method public offerLast(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
.registers 11
if-nez p1, :cond_8
new-instance v4, Ljava/lang/NullPointerException;
invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V
throw v4
:cond_8
new-instance v3, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
invoke-direct {v3, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V
invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J
move-result-wide v1
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V
:try_start_16
:goto_16
invoke-direct {p0, v3}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->linkLast(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
:try_end_19
.catchall {:try_start_16 .. :try_end_19} :catchall_33
move-result v4
if-nez v4, :cond_2e
const-wide/16 v4, 0x0
cmp-long v4, v1, v4
if-gtz v4, :cond_27
const/4 v4, 0x0
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
:goto_26
return v4
:cond_27
:try_start_27
iget-object v4, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;
invoke-interface {v4, v1, v2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
:try_end_2c
.catchall {:try_start_27 .. :try_end_2c} :catchall_33
move-result-wide v1
goto :goto_16
:cond_2e
const/4 v4, 0x1
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
goto :goto_26
:catchall_33
move-exception v4
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v4
.end method
.method public peek()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->peekFirst()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public peekFirst()Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_5
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
:try_end_7
.catchall {:try_start_5 .. :try_end_7} :catchall_13
if-nez v1, :cond_e
const/4 v1, 0x0
:goto_a
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
return-object v1
:try_start_e
:cond_e
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
iget-object v1, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
:try_end_12
.catchall {:try_start_e .. :try_end_12} :catchall_13
goto :goto_a
:catchall_13
move-exception v1
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v1
.end method
.method public peekLast()Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_5
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
:try_end_7
.catchall {:try_start_5 .. :try_end_7} :catchall_13
if-nez v1, :cond_e
const/4 v1, 0x0
:goto_a
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
return-object v1
:try_start_e
:cond_e
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
iget-object v1, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
:try_end_12
.catchall {:try_start_e .. :try_end_12} :catchall_13
goto :goto_a
:catchall_13
move-exception v1
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v1
.end method
.method public poll()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
.registers 5
invoke-virtual {p0, p1, p2, p3}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public pollFirst()Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_5
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
:try_end_8
.catchall {:try_start_5 .. :try_end_8} :catchall_d
move-result-object v1
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
return-object v1
:catchall_d
move-exception v1
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v1
.end method
.method public pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
.registers 10
invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J
move-result-wide v1
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V
:goto_9
:try_start_9
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
:try_end_c
.catchall {:try_start_9 .. :try_end_c} :catchall_25
move-result-object v3
if-nez v3, :cond_21
const-wide/16 v4, 0x0
cmp-long v4, v1, v4
if-gtz v4, :cond_1a
const/4 v3, 0x0
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
:goto_19
return-object v3
:try_start_1a
:cond_1a
iget-object v4, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;
invoke-interface {v4, v1, v2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
:try_end_1f
.catchall {:try_start_1a .. :try_end_1f} :catchall_25
move-result-wide v1
goto :goto_9
:cond_21
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
goto :goto_19
:catchall_25
move-exception v4
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v4
.end method
.method public pollLast()Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_5
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;
:try_end_8
.catchall {:try_start_5 .. :try_end_8} :catchall_d
move-result-object v1
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
return-object v1
:catchall_d
move-exception v1
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v1
.end method
.method public pollLast(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
.registers 10
invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J
move-result-wide v1
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V
:goto_9
:try_start_9
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;
:try_end_c
.catchall {:try_start_9 .. :try_end_c} :catchall_25
move-result-object v3
if-nez v3, :cond_21
const-wide/16 v4, 0x0
cmp-long v4, v1, v4
if-gtz v4, :cond_1a
const/4 v3, 0x0
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
:goto_19
return-object v3
:try_start_1a
:cond_1a
iget-object v4, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;
invoke-interface {v4, v1, v2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
:try_end_1f
.catchall {:try_start_1a .. :try_end_1f} :catchall_25
move-result-wide v1
goto :goto_9
:cond_21
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
goto :goto_19
:catchall_25
move-exception v4
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v4
.end method
.method public pop()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->removeFirst()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public push(Ljava/lang/Object;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->addFirst(Ljava/lang/Object;)V
return-void
.end method
.method public put(Ljava/lang/Object;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->putLast(Ljava/lang/Object;)V
return-void
.end method
.method public putFirst(Ljava/lang/Object;)V
.registers 5
if-nez p1, :cond_8
new-instance v2, Ljava/lang/NullPointerException;
invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V
throw v2
:cond_8
new-instance v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
invoke-direct {v1, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_12
:goto_12
invoke-direct {p0, v1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->linkFirst(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
move-result v2
if-nez v2, :cond_23
iget-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;
invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
:try_end_1d
.catchall {:try_start_12 .. :try_end_1d} :catchall_1e
goto :goto_12
:catchall_1e
move-exception v2
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v2
:cond_23
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
return-void
.end method
.method public putLast(Ljava/lang/Object;)V
.registers 5
if-nez p1, :cond_8
new-instance v2, Ljava/lang/NullPointerException;
invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V
throw v2
:cond_8
new-instance v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
invoke-direct {v1, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_12
:goto_12
invoke-direct {p0, v1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->linkLast(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
move-result v2
if-nez v2, :cond_23
iget-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;
invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
:try_end_1d
.catchall {:try_start_12 .. :try_end_1d} :catchall_1e
goto :goto_12
:catchall_1e
move-exception v2
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v2
:cond_23
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
return-void
.end method
.method public remainingCapacity()I
.registers 4
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_5
iget v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->capacity:I
iget v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I
:try_end_9
.catchall {:try_start_5 .. :try_end_9} :catchall_e
sub-int/2addr v1, v2
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
return v1
:catchall_e
move-exception v1
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v1
.end method
.method public remove()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->removeFirst()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public remove(Ljava/lang/Object;)Z
.registers 3
invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public removeFirst()Ljava/lang/Object;
.registers 3
invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_c
new-instance v1, Ljava/util/NoSuchElementException;
invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V
throw v1
:cond_c
return-object v0
.end method
.method public removeFirstOccurrence(Ljava/lang/Object;)Z
.registers 6
const/4 v2, 0x0
if-nez p1, :cond_4
:goto_3
return v2
:cond_4
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_9
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
:goto_b
if-eqz v1, :cond_20
iget-object v3, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_1d
invoke-virtual {p0, v1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlink(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)V
:try_end_18
.catchall {:try_start_9 .. :try_end_18} :catchall_24
const/4 v2, 0x1
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
goto :goto_3
:try_start_1d
:cond_1d
iget-object v1, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
:try_end_1f
.catchall {:try_start_1d .. :try_end_1f} :catchall_24
goto :goto_b
:cond_20
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
goto :goto_3
:catchall_24
move-exception v2
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v2
.end method
.method public removeLast()Ljava/lang/Object;
.registers 3
invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->pollLast()Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_c
new-instance v1, Ljava/util/NoSuchElementException;
invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V
throw v1
:cond_c
return-object v0
.end method
.method public removeLastOccurrence(Ljava/lang/Object;)Z
.registers 6
const/4 v2, 0x0
if-nez p1, :cond_4
:goto_3
return v2
:cond_4
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_9
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
:goto_b
if-eqz v1, :cond_20
iget-object v3, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_1d
invoke-virtual {p0, v1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlink(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)V
:try_end_18
.catchall {:try_start_9 .. :try_end_18} :catchall_24
const/4 v2, 0x1
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
goto :goto_3
:try_start_1d
:cond_1d
iget-object v1, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
:try_end_1f
.catchall {:try_start_1d .. :try_end_1f} :catchall_24
goto :goto_b
:cond_20
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
goto :goto_3
:catchall_24
move-exception v2
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v2
.end method
.method public size()I
.registers 3
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_5
iget v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I
:try_end_7
.catchall {:try_start_5 .. :try_end_7} :catchall_b
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
return v1
:catchall_b
move-exception v1
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v1
.end method
.method public take()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->takeFirst()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public takeFirst()Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_5
:goto_5
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
move-result-object v1
if-nez v1, :cond_16
iget-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;
invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
:try_end_10
.catchall {:try_start_5 .. :try_end_10} :catchall_11
goto :goto_5
:catchall_11
move-exception v2
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v2
:cond_16
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
return-object v1
.end method
.method public takeLast()Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_5
:goto_5
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;
move-result-object v1
if-nez v1, :cond_16
iget-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;
invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
:try_end_10
.catchall {:try_start_5 .. :try_end_10} :catchall_11
goto :goto_5
:catchall_11
move-exception v2
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v2
:cond_16
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
return-object v1
.end method
.method public toArray()[Ljava/lang/Object;
.registers 7
iget-object v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_5
iget v5, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I
new-array v0, v5, [Ljava/lang/Object;
const/4 v1, 0x0
iget-object v4, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
move v2, v1
:goto_d
if-eqz v4, :cond_19
add-int/lit8 v1, v2, 0x1
iget-object v5, v4, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
aput-object v5, v0, v2
iget-object v4, v4, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
:try_end_17
.catchall {:try_start_5 .. :try_end_17} :catchall_1d
move v2, v1
goto :goto_d
:cond_19
invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
return-object v0
:catchall_1d
move-exception v5
invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v5
.end method
.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
.registers 9
iget-object v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_5
array-length v5, p1
iget v6, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I
if-ge v5, v6, :cond_1e
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
move-result-object v5
iget v6, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I
invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
move-result-object v5
check-cast v5, [Ljava/lang/Object;
move-object v0, v5
check-cast v0, [Ljava/lang/Object;
move-object p1, v0
:cond_1e
const/4 v1, 0x0
iget-object v4, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
move v2, v1
:goto_22
if-eqz v4, :cond_2e
add-int/lit8 v1, v2, 0x1
iget-object v5, v4, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
aput-object v5, p1, v2
iget-object v4, v4, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
move v2, v1
goto :goto_22
:cond_2e
array-length v5, p1
if-le v5, v2, :cond_34
const/4 v5, 0x0
aput-object v5, p1, v2
:cond_34
:try_end_34
.catchall {:try_start_5 .. :try_end_34} :catchall_38
invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
return-object p1
:catchall_38
move-exception v5
invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v5
.end method
.method public toString()Ljava/lang/String;
.registers 7
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_5
iget-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
if-nez v2, :cond_10
const-string/jumbo v4, "[]"
:try_end_c
.catchall {:try_start_5 .. :try_end_c} :catchall_42
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
:goto_f
return-object v4
:cond_10
:try_start_10
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const/16 v4, 0x5b
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:goto_1a
iget-object v0, v2, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
if-ne v0, p0, :cond_21
const-string/jumbo v0, "(this Collection)"
:cond_21
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
iget-object v2, v2, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
if-nez v2, :cond_36
const/16 v4, 0x5d
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_31
.catchall {:try_start_10 .. :try_end_31} :catchall_42
move-result-object v4
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
goto :goto_f
:cond_36
const/16 v4, 0x2c
:try_start_38
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v4
const/16 v5, 0x20
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:try_end_41
.catchall {:try_start_38 .. :try_end_41} :catchall_42
goto :goto_1a
:catchall_42
move-exception v4
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v4
.end method
.method  unlink(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)V
.registers 5
iget-object v1, p1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
iget-object v0, p1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
if-nez v1, :cond_a
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
:goto_9
return-void
:cond_a
if-nez v0, :cond_10
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;
goto :goto_9
:cond_10
iput-object v0, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
iput-object v1, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
const/4 v2, 0x0
iput-object v2, p1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
iget v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I
add-int/lit8 v2, v2, -0x1
iput v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I
iget-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;
invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V
goto :goto_9
.end method