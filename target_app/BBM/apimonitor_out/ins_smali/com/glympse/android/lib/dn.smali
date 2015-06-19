.class  Lcom/glympse/android/lib/dn;
.super Ljava/lang/Object;
.source "HandlerManager.java"
.implements Lcom/glympse/android/lib/GHandlerManager;
.field private _handler:Lcom/glympse/android/core/GHandler;
.field private kJ:Z
.field private mS:Ljava/util/Hashtable;
.field private mT:Ljava/util/Hashtable;
.method public constructor <init>(Lcom/glympse/android/core/GHandler;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/lib/dn;->kJ:Z
iput-object p1, p0, Lcom/glympse/android/lib/dn;->_handler:Lcom/glympse/android/core/GHandler;
new-instance v0, Ljava/util/Hashtable;
invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/dn;->mS:Ljava/util/Hashtable;
new-instance v0, Ljava/util/Hashtable;
invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/dn;->mT:Ljava/util/Hashtable;
return-void
.end method
.method protected a(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/dn;->mS:Ljava/util/Hashtable;
invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_9
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/glympse/android/lib/dn;->mS:Ljava/util/Hashtable;
invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/glympse/android/lib/dn;->mT:Ljava/util/Hashtable;
invoke-virtual {v0, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
invoke-interface {p2}, Ljava/lang/Runnable;->run()V
goto :goto_8
.end method
.method public cancel(Ljava/lang/Runnable;)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/dn;->mT:Ljava/util/Hashtable;
invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Runnable;
if-nez v0, :cond_b
:goto_a
return-void
:cond_b
iget-object v1, p0, Lcom/glympse/android/lib/dn;->mS:Ljava/util/Hashtable;
invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v1, p0, Lcom/glympse/android/lib/dn;->mT:Ljava/util/Hashtable;
invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v1, p0, Lcom/glympse/android/lib/dn;->_handler:Lcom/glympse/android/core/GHandler;
invoke-interface {v1, v0}, Lcom/glympse/android/core/GHandler;->cancel(Ljava/lang/Runnable;)V
goto :goto_a
.end method
.method public postDelayed(Ljava/lang/Runnable;J)V
.registers 8
new-instance v1, Lcom/glympse/android/lib/do;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/dn;
invoke-direct {v1, v0, p1}, Lcom/glympse/android/lib/do;-><init>(Lcom/glympse/android/lib/dn;Ljava/lang/Runnable;)V
iget-object v0, p0, Lcom/glympse/android/lib/dn;->mS:Ljava/util/Hashtable;
invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getTime()J
move-result-wide v2
add-long/2addr v2, p2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/glympse/android/lib/dn;->mT:Ljava/util/Hashtable;
invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-boolean v0, p0, Lcom/glympse/android/lib/dn;->kJ:Z
if-eqz v0, :cond_27
iget-object v0, p0, Lcom/glympse/android/lib/dn;->_handler:Lcom/glympse/android/core/GHandler;
invoke-interface {v0, v1, p2, p3}, Lcom/glympse/android/core/GHandler;->postDelayed(Ljava/lang/Runnable;J)V
:cond_27
return-void
.end method
.method public setActive(Z)V
.registers 10
iput-boolean p1, p0, Lcom/glympse/android/lib/dn;->kJ:Z
iget-boolean v0, p0, Lcom/glympse/android/lib/dn;->kJ:Z
if-eqz v0, :cond_57
new-instance v2, Lcom/glympse/android/hal/GVector;
iget-object v0, p0, Lcom/glympse/android/lib/dn;->mS:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->size()I
move-result v0
invoke-direct {v2, v0}, Lcom/glympse/android/hal/GVector;-><init>(I)V
iget-object v0, p0, Lcom/glympse/android/lib/dn;->mS:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
move-result-object v3
:goto_17
invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_42
invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Runnable;
iget-object v1, p0, Lcom/glympse/android/lib/dn;->mS:Ljava/util/Hashtable;
invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Long;
invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
move-result-wide v4
invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getTime()J
move-result-wide v6
cmp-long v1, v4, v6
if-lez v1, :cond_3e
sub-long/2addr v4, v6
iget-object v1, p0, Lcom/glympse/android/lib/dn;->_handler:Lcom/glympse/android/core/GHandler;
invoke-interface {v1, v0, v4, v5}, Lcom/glympse/android/core/GHandler;->postDelayed(Ljava/lang/Runnable;J)V
goto :goto_17
:cond_3e
invoke-virtual {v2, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
goto :goto_17
:cond_42
invoke-virtual {v2}, Lcom/glympse/android/hal/GVector;->size()I
move-result v3
const/4 v0, 0x0
move v1, v0
:goto_48
if-ge v1, v3, :cond_6f
invoke-virtual {v2, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Runnable;
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_48
:cond_57
iget-object v0, p0, Lcom/glympse/android/lib/dn;->mS:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
move-result-object v1
:goto_5d
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_6f
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Runnable;
iget-object v2, p0, Lcom/glympse/android/lib/dn;->_handler:Lcom/glympse/android/core/GHandler;
invoke-interface {v2, v0}, Lcom/glympse/android/core/GHandler;->cancel(Ljava/lang/Runnable;)V
goto :goto_5d
:cond_6f
return-void
.end method
.method public stop()V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/dn;->mS:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_18
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Runnable;
iget-object v2, p0, Lcom/glympse/android/lib/dn;->_handler:Lcom/glympse/android/core/GHandler;
invoke-interface {v2, v0}, Lcom/glympse/android/core/GHandler;->cancel(Ljava/lang/Runnable;)V
goto :goto_6
:cond_18
iget-object v0, p0, Lcom/glympse/android/lib/dn;->mS:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V
iget-object v0, p0, Lcom/glympse/android/lib/dn;->mT:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V
return-void
.end method