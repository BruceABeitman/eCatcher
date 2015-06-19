.class  Lcom/glympse/android/lib/dg;
.super Ljava/lang/Object;
.source "GroupMember.java"
.implements Lcom/glympse/android/lib/GGroupMemberPrivate;
.field protected jy:Lcom/glympse/android/api/GTicket;
.field protected mB:Ljava/lang/String;
.field protected mD:Ljava/lang/String;
.field protected mM:Lcom/glympse/android/api/GUser;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public constructor <init>(Lcom/glympse/android/api/GUser;Lcom/glympse/android/api/GTicket;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/dg;->mM:Lcom/glympse/android/api/GUser;
iput-object p2, p0, Lcom/glympse/android/lib/dg;->jy:Lcom/glympse/android/api/GTicket;
iget-object v0, p0, Lcom/glympse/android/lib/dg;->mM:Lcom/glympse/android/api/GUser;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/glympse/android/lib/dg;->mM:Lcom/glympse/android/api/GUser;
check-cast v0, Lcom/glympse/android/lib/GUserPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GUserPrivate;->addReference()V
:cond_12
return-void
.end method
.method public getInvite()Lcom/glympse/android/api/GInvite;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getInviteCode()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/dg;->mD:Ljava/lang/String;
return-object v0
.end method
.method public getTicket()Lcom/glympse/android/api/GTicket;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/dg;->jy:Lcom/glympse/android/api/GTicket;
return-object v0
.end method
.method public getUser()Lcom/glympse/android/api/GUser;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/dg;->mM:Lcom/glympse/android/api/GUser;
return-object v0
.end method
.method public getUserId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/dg;->mB:Ljava/lang/String;
return-object v0
.end method
.method public setInviteCode(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/dg;->mD:Ljava/lang/String;
return-void
.end method
.method public setTicket(Lcom/glympse/android/api/GTicket;J)V
.registers 6
iget-object v0, p0, Lcom/glympse/android/lib/dg;->jy:Lcom/glympse/android/api/GTicket;
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/glympse/android/lib/dg;->mM:Lcom/glympse/android/api/GUser;
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/glympse/android/lib/dg;->mM:Lcom/glympse/android/api/GUser;
check-cast v0, Lcom/glympse/android/lib/GUserPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GUserPrivate;->isSelf()Z
move-result v1
if-nez v1, :cond_1c
invoke-static {p1}, Lcom/glympse/android/lib/CommonSink;->removeAllListeners(Lcom/glympse/android/api/GEventSink;)V
iget-object v1, p0, Lcom/glympse/android/lib/dg;->jy:Lcom/glympse/android/api/GTicket;
check-cast v1, Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GUserPrivate;->removeTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
:cond_1c
if-eqz p1, :cond_33
iget-object v0, p0, Lcom/glympse/android/lib/dg;->jy:Lcom/glympse/android/api/GTicket;
if-eqz v0, :cond_33
invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->getTrack()Lcom/glympse/android/api/GTrack;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTrackPrivate;
iget-object v1, p0, Lcom/glympse/android/lib/dg;->jy:Lcom/glympse/android/api/GTicket;
invoke-interface {v1}, Lcom/glympse/android/api/GTicket;->getTrack()Lcom/glympse/android/api/GTrack;
move-result-object v1
check-cast v1, Lcom/glympse/android/lib/GTrackPrivate;
invoke-interface {v0, v1, p2, p3}, Lcom/glympse/android/lib/GTrackPrivate;->merge(Lcom/glympse/android/api/GTrack;J)V
:cond_33
iput-object p1, p0, Lcom/glympse/android/lib/dg;->jy:Lcom/glympse/android/api/GTicket;
return-void
.end method
.method public setUser(Lcom/glympse/android/api/GUser;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/dg;->mM:Lcom/glympse/android/api/GUser;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/glympse/android/lib/dg;->mM:Lcom/glympse/android/api/GUser;
check-cast v0, Lcom/glympse/android/lib/GUserPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GUserPrivate;->removeReference()V
:cond_b
iput-object p1, p0, Lcom/glympse/android/lib/dg;->mM:Lcom/glympse/android/api/GUser;
iget-object v0, p0, Lcom/glympse/android/lib/dg;->mM:Lcom/glympse/android/api/GUser;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/glympse/android/lib/dg;->mM:Lcom/glympse/android/api/GUser;
check-cast v0, Lcom/glympse/android/lib/GUserPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GUserPrivate;->addReference()V
:cond_18
return-void
.end method
.method public setUserId(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/dg;->mB:Ljava/lang/String;
return-void
.end method