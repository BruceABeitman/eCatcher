.class  Lcom/glympse/android/lib/dr;
.super Ljava/lang/Object;
.source "HistoryListener.java"
.implements Lcom/glympse/android/api/GEventListener;
.field private na:Lcom/glympse/android/lite/GGlympseLite;
.method public constructor <init>(Lcom/glympse/android/lite/GGlympseLite;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/dr;->na:Lcom/glympse/android/lite/GGlympseLite;
return-void
.end method
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
.registers 13
const/4 v7, 0x1
const/4 v6, 0x0
const-wide v4, 0x1000000001001L
if-ne v7, p2, :cond_12
and-int/lit16 v0, p3, 0x100
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/glympse/android/lib/dr;->na:Lcom/glympse/android/lite/GGlympseLite;
invoke-interface {p1, v4, v5, v0}, Lcom/glympse/android/api/GGlympse;->associateContext(JLjava/lang/Object;)V
:cond_12
:goto_12
return-void
:cond_13
and-int/lit16 v0, p3, 0x80
if-eqz v0, :cond_2f
invoke-interface {p1}, Lcom/glympse/android/api/GGlympse;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GUserManager;->getSelf()Lcom/glympse/android/api/GUser;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GUser;->getAvatar()Lcom/glympse/android/api/GImage;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GImage;->load()Z
iget-object v0, p0, Lcom/glympse/android/lib/dr;->na:Lcom/glympse/android/lite/GGlympseLite;
iget-object v1, p0, Lcom/glympse/android/lib/dr;->na:Lcom/glympse/android/lite/GGlympseLite;
const/4 v2, 0x2
invoke-interface {v0, v1, v2, v6, v6}, Lcom/glympse/android/lite/GGlympseLite;->eventsOccurred(Lcom/glympse/android/lite/GGlympseLite;ILjava/lang/Object;Ljava/lang/Object;)V
goto :goto_12
:cond_2f
and-int/lit16 v0, p3, 0x200
if-eqz v0, :cond_3c
iget-object v0, p0, Lcom/glympse/android/lib/dr;->na:Lcom/glympse/android/lite/GGlympseLite;
invoke-interface {v0}, Lcom/glympse/android/lite/GGlympseLite;->stop()V
invoke-interface {p1, v4, v5}, Lcom/glympse/android/api/GGlympse;->clearContext(J)V
goto :goto_12
:cond_3c
and-int/lit8 v0, p3, 0x1
if-eqz v0, :cond_4e
iget-object v0, p0, Lcom/glympse/android/lib/dr;->na:Lcom/glympse/android/lite/GGlympseLite;
iget-object v1, p0, Lcom/glympse/android/lib/dr;->na:Lcom/glympse/android/lite/GGlympseLite;
const-wide/16 v2, 0x1
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-interface {v0, v1, v7, v2, v6}, Lcom/glympse/android/lite/GGlympseLite;->eventsOccurred(Lcom/glympse/android/lite/GGlympseLite;ILjava/lang/Object;Ljava/lang/Object;)V
goto :goto_12
:cond_4e
and-int/lit8 v0, p3, 0x10
if-eqz v0, :cond_60
iget-object v0, p0, Lcom/glympse/android/lib/dr;->na:Lcom/glympse/android/lite/GGlympseLite;
iget-object v1, p0, Lcom/glympse/android/lib/dr;->na:Lcom/glympse/android/lite/GGlympseLite;
const-wide/16 v2, 0x2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-interface {v0, v1, v7, v2, v6}, Lcom/glympse/android/lite/GGlympseLite;->eventsOccurred(Lcom/glympse/android/lite/GGlympseLite;ILjava/lang/Object;Ljava/lang/Object;)V
goto :goto_12
:cond_60
const/high16 v0, 0x100
and-int/2addr v0, p3
if-eqz v0, :cond_69
invoke-static {}, Lcom/glympse/android/hal/ControlsFactory;->showToastRateLimited()V
goto :goto_12
:cond_69
const/high16 v0, 0x2
and-int/2addr v0, p3
if-eqz v0, :cond_8b
check-cast p4, Lcom/glympse/android/api/GTicket;
invoke-interface {p4, v4, v5}, Lcom/glympse/android/api/GTicket;->getContext(J)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lite/GTicketLite;
if-nez v0, :cond_80
new-instance v0, Lcom/glympse/android/lib/ik;
invoke-direct {v0, p4}, Lcom/glympse/android/lib/ik;-><init>(Lcom/glympse/android/api/GTicket;)V
invoke-interface {p4, v4, v5, v0}, Lcom/glympse/android/api/GTicket;->associateContext(JLjava/lang/Object;)V
:cond_80
new-instance v1, Lcom/glympse/android/lib/ds;
iget-object v2, p0, Lcom/glympse/android/lib/dr;->na:Lcom/glympse/android/lite/GGlympseLite;
invoke-direct {v1, v2, v0}, Lcom/glympse/android/lib/ds;-><init>(Lcom/glympse/android/lite/GGlympseLite;Lcom/glympse/android/lite/GTicketLite;)V
invoke-interface {p4, v1}, Lcom/glympse/android/api/GTicket;->addListener(Lcom/glympse/android/api/GEventListener;)Z
goto :goto_12
:cond_8b
const/high16 v0, 0x4
and-int/2addr v0, p3
if-eqz v0, :cond_a6
check-cast p4, Lcom/glympse/android/api/GTicket;
invoke-interface {p4, v4, v5}, Lcom/glympse/android/api/GTicket;->getContext(J)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lite/GTicketLite;
iget-object v1, p0, Lcom/glympse/android/lib/dr;->na:Lcom/glympse/android/lite/GGlympseLite;
iget-object v2, p0, Lcom/glympse/android/lib/dr;->na:Lcom/glympse/android/lite/GGlympseLite;
const/16 v3, 0x10
invoke-interface {v1, v2, v3, v0, v6}, Lcom/glympse/android/lite/GGlympseLite;->eventsOccurred(Lcom/glympse/android/lite/GGlympseLite;ILjava/lang/Object;Ljava/lang/Object;)V
invoke-interface {p4, v4, v5}, Lcom/glympse/android/api/GTicket;->clearContext(J)V
goto/16 :goto_12
:cond_a6
const/high16 v0, 0x8
and-int/2addr v0, p3
if-eqz v0, :cond_12
check-cast p4, Lcom/glympse/android/api/GTicket;
invoke-interface {p4, v4, v5}, Lcom/glympse/android/api/GTicket;->getContext(J)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lite/GTicketLite;
iget-object v1, p0, Lcom/glympse/android/lib/dr;->na:Lcom/glympse/android/lite/GGlympseLite;
iget-object v2, p0, Lcom/glympse/android/lib/dr;->na:Lcom/glympse/android/lite/GGlympseLite;
const/16 v3, 0x20
invoke-interface {v1, v2, v3, v0, v6}, Lcom/glympse/android/lite/GGlympseLite;->eventsOccurred(Lcom/glympse/android/lite/GGlympseLite;ILjava/lang/Object;Ljava/lang/Object;)V
goto/16 :goto_12
.end method