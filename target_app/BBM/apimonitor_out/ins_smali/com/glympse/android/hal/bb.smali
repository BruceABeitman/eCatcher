.class  Lcom/glympse/android/hal/bb;
.super Ljava/lang/Object;
.source "ProfileListener.java"
.implements Lcom/glympse/android/api/GEventListener;
.field protected cI:Lcom/glympse/android/api/GGlympse;
.field protected cJ:Lcom/glympse/android/api/GUser;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()V
.registers 1
return-void
.end method
.method public b()V
.registers 1
return-void
.end method
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
.registers 8
const/4 v2, 0x1
const/4 v1, 0x2
packed-switch p2, :pswitch_data_82
:pswitch_5
:goto_5
:cond_5
return-void
:pswitch_6
and-int/lit16 v0, p3, 0x80
if-eqz v0, :cond_18
invoke-interface {p1}, Lcom/glympse/android/api/GGlympse;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v1
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GEventListener;
invoke-interface {v1, v0}, Lcom/glympse/android/api/GHistoryManager;->simulateAddedEvents(Lcom/glympse/android/api/GEventListener;)V
goto :goto_5
:cond_18
const/high16 v0, 0x2
and-int/2addr v0, p3
if-eqz v0, :cond_3a
check-cast p4, Lcom/glympse/android/api/GTicket;
invoke-interface {p4}, Lcom/glympse/android/api/GTicket;->isMine()Z
move-result v0
if-eqz v0, :cond_30
invoke-interface {p4}, Lcom/glympse/android/api/GTicket;->getState()I
move-result v0
and-int/lit8 v0, v0, 0x12
if-eqz v0, :cond_30
invoke-virtual {p0, v1}, Lcom/glympse/android/hal/bb;->notify(I)V
:cond_30
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GEventListener;
invoke-interface {p4, v0}, Lcom/glympse/android/api/GTicket;->addListener(Lcom/glympse/android/api/GEventListener;)Z
goto :goto_5
:cond_3a
const/high16 v0, 0x4
and-int/2addr v0, p3
if-eqz v0, :cond_5
check-cast p4, Lcom/glympse/android/api/GTicket;
invoke-interface {p1}, Lcom/glympse/android/api/GGlympse;->isStarted()Z
move-result v0
if-eqz v0, :cond_4a
invoke-virtual {p0, v1}, Lcom/glympse/android/hal/bb;->notify(I)V
:cond_4a
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GEventListener;
invoke-interface {p4, v0}, Lcom/glympse/android/api/GTicket;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
goto :goto_5
:pswitch_54
and-int/lit8 v0, p3, 0x1
if-eqz v0, :cond_5
invoke-virtual {p0, v2}, Lcom/glympse/android/hal/bb;->notify(I)V
goto :goto_5
:pswitch_5c
and-int/lit8 v0, p3, 0x1
if-eqz v0, :cond_5
invoke-virtual {p0, v2}, Lcom/glympse/android/hal/bb;->notify(I)V
goto :goto_5
:pswitch_64
check-cast p4, Lcom/glympse/android/api/GTicket;
and-int/lit8 v0, p3, 0x10
if-eqz v0, :cond_73
invoke-interface {p4}, Lcom/glympse/android/api/GTicket;->isMine()Z
move-result v0
if-eqz v0, :cond_73
invoke-virtual {p0, v1}, Lcom/glympse/android/hal/bb;->notify(I)V
:cond_73
const/high16 v0, 0x100
and-int/2addr v0, p3
if-eqz v0, :cond_5
invoke-interface {p4}, Lcom/glympse/android/api/GTicket;->isMine()Z
move-result v0
if-eqz v0, :cond_5
invoke-virtual {p0, v1}, Lcom/glympse/android/hal/bb;->notify(I)V
goto :goto_5
:pswitch_data_82
.packed-switch 0x1
:pswitch_6
:pswitch_5
:pswitch_54
:pswitch_64
:pswitch_5
:pswitch_5
:pswitch_5c
.end packed-switch
.end method
.method protected notify(I)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/hal/bb;->cJ:Lcom/glympse/android/api/GUser;
invoke-interface {v0}, Lcom/glympse/android/api/GUser;->getId()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_9
:goto_8
return-void
:cond_9
invoke-virtual {p0, p1}, Lcom/glympse/android/hal/bb;->send(I)V
goto :goto_8
.end method
.method public send(I)V
.registers 2
return-void
.end method
.method public setActive(Z)V
.registers 2
return-void
.end method
.method public start(Lcom/glympse/android/api/GGlympse;)V
.registers 4
iput-object p1, p0, Lcom/glympse/android/hal/bb;->cI:Lcom/glympse/android/api/GGlympse;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GEventListener;
iget-object v1, p0, Lcom/glympse/android/hal/bb;->cI:Lcom/glympse/android/api/GGlympse;
invoke-interface {v1, v0}, Lcom/glympse/android/api/GGlympse;->addListener(Lcom/glympse/android/api/GEventListener;)Z
iget-object v1, p0, Lcom/glympse/android/hal/bb;->cI:Lcom/glympse/android/api/GGlympse;
invoke-interface {v1}, Lcom/glympse/android/api/GGlympse;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v1
invoke-interface {v1}, Lcom/glympse/android/api/GUserManager;->getSelf()Lcom/glympse/android/api/GUser;
move-result-object v1
iput-object v1, p0, Lcom/glympse/android/hal/bb;->cJ:Lcom/glympse/android/api/GUser;
iget-object v1, p0, Lcom/glympse/android/hal/bb;->cJ:Lcom/glympse/android/api/GUser;
invoke-interface {v1, v0}, Lcom/glympse/android/api/GUser;->addListener(Lcom/glympse/android/api/GEventListener;)Z
iget-object v1, p0, Lcom/glympse/android/hal/bb;->cJ:Lcom/glympse/android/api/GUser;
invoke-interface {v1}, Lcom/glympse/android/api/GUser;->getAvatar()Lcom/glympse/android/api/GImage;
move-result-object v1
invoke-interface {v1, v0}, Lcom/glympse/android/api/GImage;->addListener(Lcom/glympse/android/api/GEventListener;)Z
invoke-virtual {p0}, Lcom/glympse/android/hal/bb;->a()V
return-void
.end method
.method public stop()V
.registers 3
invoke-virtual {p0}, Lcom/glympse/android/hal/bb;->b()V
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GEventListener;
iget-object v1, p0, Lcom/glympse/android/hal/bb;->cI:Lcom/glympse/android/api/GGlympse;
invoke-interface {v1, v0}, Lcom/glympse/android/api/GGlympse;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
iget-object v1, p0, Lcom/glympse/android/hal/bb;->cJ:Lcom/glympse/android/api/GUser;
invoke-interface {v1, v0}, Lcom/glympse/android/api/GUser;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
iget-object v1, p0, Lcom/glympse/android/hal/bb;->cJ:Lcom/glympse/android/api/GUser;
invoke-interface {v1}, Lcom/glympse/android/api/GUser;->getAvatar()Lcom/glympse/android/api/GImage;
move-result-object v1
invoke-interface {v1, v0}, Lcom/glympse/android/api/GImage;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/hal/bb;->cI:Lcom/glympse/android/api/GGlympse;
return-void
.end method