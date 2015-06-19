.class  Lcom/glympse/android/lib/hs;
.super Ljava/lang/Object;
.source "SinkLite.java"
.implements Lcom/glympse/android/core/GCommon;
.field private _handler:Lcom/glympse/android/core/GHandler;
.field private it:Lcom/glympse/android/hal/GVector;
.field private iu:Z
.field private iv:Lcom/glympse/android/hal/GVector;
.field private iw:Lcom/glympse/android/hal/GVector;
.method public constructor <init>(Lcom/glympse/android/core/GHandler;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/hs;->_handler:Lcom/glympse/android/core/GHandler;
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/hs;->it:Lcom/glympse/android/hal/GVector;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/lib/hs;->iu:Z
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/hs;->iv:Lcom/glympse/android/hal/GVector;
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/hs;->iw:Lcom/glympse/android/hal/GVector;
return-void
.end method
.method private a(Lcom/glympse/android/lite/GListenerLite;)Z
.registers 8
const/4 v1, 0x0
invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I
move-result v3
iget-object v0, p0, Lcom/glympse/android/lib/hs;->it:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v4
move v2, v1
:goto_c
if-ge v2, v4, :cond_28
iget-object v0, p0, Lcom/glympse/android/lib/hs;->it:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lite/GListenerLite;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v5
if-ne v5, v3, :cond_24
invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_24
move v0, v1
:goto_23
return v0
:cond_24
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_c
:cond_28
iget-object v0, p0, Lcom/glympse/android/lib/hs;->it:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
const/4 v0, 0x1
goto :goto_23
.end method
.method public a(Lcom/glympse/android/lite/GGlympseLite;ILjava/lang/Object;Ljava/lang/Object;)V
.registers 8
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/glympse/android/lib/hs;->iu:Z
iget-object v0, p0, Lcom/glympse/android/lib/hs;->it:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->elements()Ljava/util/Enumeration;
move-result-object v1
:goto_9
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lite/GListenerLite;
invoke-interface {v0, p1, p2, p3, p4}, Lcom/glympse/android/lite/GListenerLite;->eventsOccurred(Lcom/glympse/android/lite/GGlympseLite;ILjava/lang/Object;Ljava/lang/Object;)V
goto :goto_9
:cond_19
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/lib/hs;->iu:Z
iget-object v0, p0, Lcom/glympse/android/lib/hs;->iv:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v0
if-lez v0, :cond_3f
iget-object v0, p0, Lcom/glympse/android/lib/hs;->iv:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->elements()Ljava/util/Enumeration;
move-result-object v1
:goto_2a
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_3a
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lite/GListenerLite;
invoke-direct {p0, v0}, Lcom/glympse/android/lib/hs;->a(Lcom/glympse/android/lite/GListenerLite;)Z
goto :goto_2a
:cond_3a
iget-object v0, p0, Lcom/glympse/android/lib/hs;->iv:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->removeAllElements()V
:cond_3f
iget-object v0, p0, Lcom/glympse/android/lib/hs;->iw:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v0
if-lez v0, :cond_64
iget-object v0, p0, Lcom/glympse/android/lib/hs;->iw:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->elements()Ljava/util/Enumeration;
move-result-object v1
:goto_4d
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_5f
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lite/GListenerLite;
iget-object v2, p0, Lcom/glympse/android/lib/hs;->it:Lcom/glympse/android/hal/GVector;
invoke-virtual {v2, v0}, Lcom/glympse/android/hal/GVector;->removeElement(Ljava/lang/Object;)Z
goto :goto_4d
:cond_5f
iget-object v0, p0, Lcom/glympse/android/lib/hs;->iw:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->removeAllElements()V
:cond_64
return-void
.end method
.method public addListener(Lcom/glympse/android/lite/GListenerLite;)Z
.registers 3
if-nez p1, :cond_4
const/4 v0, 0x0
:goto_3
return v0
:cond_4
iget-boolean v0, p0, Lcom/glympse/android/lib/hs;->iu:Z
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/glympse/android/lib/hs;->iv:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
const/4 v0, 0x1
goto :goto_3
:cond_f
invoke-direct {p0, p1}, Lcom/glympse/android/lib/hs;->a(Lcom/glympse/android/lite/GListenerLite;)Z
move-result v0
goto :goto_3
.end method
.method public eventsOccurred(Lcom/glympse/android/lite/GGlympseLite;ILjava/lang/Object;Ljava/lang/Object;)V
.registers 12
iget-object v0, p0, Lcom/glympse/android/lib/hs;->it:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v0
if-nez v0, :cond_9
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/glympse/android/lib/hs;->_handler:Lcom/glympse/android/core/GHandler;
invoke-interface {v0}, Lcom/glympse/android/core/GHandler;->isMainThread()Z
move-result v0
if-nez v0, :cond_26
iget-object v6, p0, Lcom/glympse/android/lib/hs;->_handler:Lcom/glympse/android/core/GHandler;
new-instance v0, Lcom/glympse/android/lib/ht;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/glympse/android/lib/hs;
move-object v2, p1
move v3, p2
move-object v4, p3
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/glympse/android/lib/ht;-><init>(Lcom/glympse/android/lib/hs;Lcom/glympse/android/lite/GGlympseLite;ILjava/lang/Object;Ljava/lang/Object;)V
invoke-interface {v6, v0}, Lcom/glympse/android/core/GHandler;->post(Ljava/lang/Runnable;)V
goto :goto_8
:cond_26
iget-boolean v0, p0, Lcom/glympse/android/lib/hs;->iu:Z
if-eqz v0, :cond_3f
iget-object v6, p0, Lcom/glympse/android/lib/hs;->_handler:Lcom/glympse/android/core/GHandler;
new-instance v0, Lcom/glympse/android/lib/ht;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/glympse/android/lib/hs;
move-object v2, p1
move v3, p2
move-object v4, p3
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/glympse/android/lib/ht;-><init>(Lcom/glympse/android/lib/hs;Lcom/glympse/android/lite/GGlympseLite;ILjava/lang/Object;Ljava/lang/Object;)V
invoke-interface {v6, v0}, Lcom/glympse/android/core/GHandler;->post(Ljava/lang/Runnable;)V
goto :goto_8
:cond_3f
invoke-virtual {p0, p1, p2, p3, p4}, Lcom/glympse/android/lib/hs;->a(Lcom/glympse/android/lite/GGlympseLite;ILjava/lang/Object;Ljava/lang/Object;)V
goto :goto_8
.end method
.method public getListeners()Lcom/glympse/android/core/GArray;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/hs;->it:Lcom/glympse/android/hal/GVector;
return-object v0
.end method
.method public removeAllListeners()Z
.registers 6
const/4 v4, 0x1
iget-boolean v0, p0, Lcom/glympse/android/lib/hs;->iu:Z
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/glympse/android/lib/hs;->it:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v2
const/4 v0, 0x0
move v1, v0
:goto_d
if-ge v1, v2, :cond_25
iget-object v0, p0, Lcom/glympse/android/lib/hs;->it:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lite/GListenerLite;
iget-object v3, p0, Lcom/glympse/android/lib/hs;->iw:Lcom/glympse/android/hal/GVector;
invoke-virtual {v3, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_d
:cond_20
iget-object v0, p0, Lcom/glympse/android/lib/hs;->it:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->removeAllElements()V
:cond_25
return v4
.end method
.method public removeListener(Lcom/glympse/android/lite/GListenerLite;)Z
.registers 3
if-nez p1, :cond_4
const/4 v0, 0x0
:goto_3
return v0
:cond_4
iget-boolean v0, p0, Lcom/glympse/android/lib/hs;->iu:Z
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/glympse/android/lib/hs;->iw:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
const/4 v0, 0x1
goto :goto_3
:cond_f
iget-object v0, p0, Lcom/glympse/android/lib/hs;->it:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->removeElement(Ljava/lang/Object;)Z
move-result v0
goto :goto_3
.end method