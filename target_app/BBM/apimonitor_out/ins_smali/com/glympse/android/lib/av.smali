.class  Lcom/glympse/android/lib/av;
.super Ljava/lang/Object;
.source "DemoMode.java"
.implements Ljava/lang/Runnable;
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/av;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
return-void
.end method
.method public run()V
.registers 11
const/4 v2, 0x0
iget-object v0, p0, Lcom/glympse/android/lib/av;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isStarted()Z
move-result v0
if-nez v0, :cond_a
:goto_9
return-void
:cond_a
invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getTime()J
move-result-wide v4
iget-object v0, p0, Lcom/glympse/android/lib/av;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GHistoryManager;->getTickets()Lcom/glympse/android/core/GArray;
move-result-object v6
invoke-interface {v6}, Lcom/glympse/android/core/GArray;->length()I
move-result v7
move v3, v2
:goto_1d
if-ge v3, v7, :cond_49
invoke-interface {v6, v3}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GTicket;
const/16 v1, 0x10
invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->getState()I
move-result v8
if-ne v1, v8, :cond_45
invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->getInvites()Lcom/glympse/android/core/GArray;
move-result-object v8
invoke-interface {v8}, Lcom/glympse/android/core/GArray;->length()I
move-result v9
move v1, v2
:goto_36
if-ge v1, v9, :cond_45
invoke-interface {v8, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v0, v4, v5}, Lcom/glympse/android/lib/GInvitePrivate;->setLastViewTime(J)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_36
:cond_45
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_1d
:cond_49
iget-object v0, p0, Lcom/glympse/android/lib/av;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandler()Lcom/glympse/android/core/GHandler;
move-result-object v1
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Runnable;
const-wide/16 v2, 0x1388
invoke-interface {v1, v0, v2, v3}, Lcom/glympse/android/core/GHandler;->postDelayed(Ljava/lang/Runnable;J)V
goto :goto_9
.end method