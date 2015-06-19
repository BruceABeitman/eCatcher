.class abstract Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;
.super Ljava/lang/Object;
.source "LinkedBlockingDeque.java"
.implements Ljava/util/Iterator;
.field private lastRet:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
.field  next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
.field  nextItem:Ljava/lang/Object;
.field final synthetic this$0:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;
.method constructor <init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;)V
.registers 4
iput-object p1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->this$0:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iget-object v0, p1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_a
invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->firstNode()Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
move-result-object v1
iput-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
if-nez v1, :cond_1b
const/4 v1, 0x0
:goto_15
iput-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->nextItem:Ljava/lang/Object;
:try_end_17
.catchall {:try_start_a .. :try_end_17} :catchall_20
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
return-void
:cond_1b
:try_start_1b
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
iget-object v1, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
:try_end_1f
.catchall {:try_start_1b .. :try_end_1f} :catchall_20
goto :goto_15
:catchall_20
move-exception v1
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v1
.end method
.method private succ(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
.registers 4
:goto_0
invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->nextNode(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
move-result-object v0
if-nez v0, :cond_8
const/4 v0, 0x0
:cond_7
:goto_7
return-object v0
:cond_8
iget-object v1, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
if-nez v1, :cond_7
if-ne v0, p1, :cond_13
invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->firstNode()Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
move-result-object v0
goto :goto_7
:cond_13
move-object p1, v0
goto :goto_0
.end method
.method  advance()V
.registers 3
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->this$0:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;
iget-object v0, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_7
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
invoke-direct {p0, v1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->succ(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
move-result-object v1
iput-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
if-nez v1, :cond_1a
const/4 v1, 0x0
:goto_14
iput-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->nextItem:Ljava/lang/Object;
:try_end_16
.catchall {:try_start_7 .. :try_end_16} :catchall_1f
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
return-void
:try_start_1a
:cond_1a
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
iget-object v1, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
:try_end_1e
.catchall {:try_start_1a .. :try_end_1e} :catchall_1f
goto :goto_14
:catchall_1f
move-exception v1
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v1
.end method
.method abstract firstNode()Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
.end method
.method public hasNext()Z
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public next()Ljava/lang/Object;
.registers 3
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
if-nez v1, :cond_a
new-instance v1, Ljava/util/NoSuchElementException;
invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V
throw v1
:cond_a
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
iput-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->lastRet:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->nextItem:Ljava/lang/Object;
invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->advance()V
return-object v0
.end method
.method abstract nextNode(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
.end method
.method public remove()V
.registers 4
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->lastRet:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
if-nez v1, :cond_a
new-instance v2, Ljava/lang/IllegalStateException;
invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V
throw v2
:cond_a
const/4 v2, 0x0
iput-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->lastRet:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
iget-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->this$0:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;
iget-object v0, v2, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_14
iget-object v2, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
if-eqz v2, :cond_1d
iget-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->this$0:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;
invoke-virtual {v2, v1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlink(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)V
:try_end_1d
.catchall {:try_start_14 .. :try_end_1d} :catchall_21
:cond_1d
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
return-void
:catchall_21
move-exception v2
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v2
.end method