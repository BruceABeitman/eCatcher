.class  Lcom/glympse/android/lib/en;
.super Lcom/glympse/android/lib/j;
.source "InviteDelete.java"
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field private jx:Lcom/glympse/android/lib/l;
.field private mi:Ljava/lang/String;
.field private oh:Lcom/glympse/android/lib/GTicketPrivate;
.field private oi:Lcom/glympse/android/lib/GInvitePrivate;
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/lib/GInvitePrivate;)V
.registers 6
invoke-direct {p0}, Lcom/glympse/android/lib/j;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/en;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iput-object p2, p0, Lcom/glympse/android/lib/en;->oh:Lcom/glympse/android/lib/GTicketPrivate;
iput-object p3, p0, Lcom/glympse/android/lib/en;->oi:Lcom/glympse/android/lib/GInvitePrivate;
iget-object v0, p0, Lcom/glympse/android/lib/en;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GInvitePrivate;->getCode()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/en;->mi:Ljava/lang/String;
iget-object v0, p0, Lcom/glympse/android/lib/en;->oi:Lcom/glympse/android/lib/GInvitePrivate;
const/4 v1, 0x5
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GInvitePrivate;->setState(I)V
new-instance v0, Lcom/glympse/android/lib/l;
invoke-direct {v0}, Lcom/glympse/android/lib/l;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/en;->jx:Lcom/glympse/android/lib/l;
iget-object v0, p0, Lcom/glympse/android/lib/en;->jx:Lcom/glympse/android/lib/l;
iput-object v0, p0, Lcom/glympse/android/lib/en;->hc:Lcom/glympse/android/lib/k;
return-void
.end method
.method public cancel()V
.registers 2
new-instance v0, Lcom/glympse/android/lib/l;
invoke-direct {v0}, Lcom/glympse/android/lib/l;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/en;->jx:Lcom/glympse/android/lib/l;
iget-object v0, p0, Lcom/glympse/android/lib/en;->jx:Lcom/glympse/android/lib/l;
iput-object v0, p0, Lcom/glympse/android/lib/en;->hc:Lcom/glympse/android/lib/k;
return-void
.end method
.method public process()Z
.registers 7
const/4 v5, 0x4
const/4 v0, 0x1
iget-object v1, p0, Lcom/glympse/android/lib/en;->jx:Lcom/glympse/android/lib/l;
iget-object v1, v1, Lcom/glympse/android/lib/l;->hf:Ljava/lang/String;
const-string v2, "ok"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_28
iget-object v1, p0, Lcom/glympse/android/lib/en;->oi:Lcom/glympse/android/lib/GInvitePrivate;
const/4 v2, 0x6
invoke-interface {v1, v2}, Lcom/glympse/android/lib/GInvitePrivate;->setState(I)V
iget-object v1, p0, Lcom/glympse/android/lib/en;->oh:Lcom/glympse/android/lib/GTicketPrivate;
iget-object v2, p0, Lcom/glympse/android/lib/en;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v1, v2, v0}, Lcom/glympse/android/lib/GTicketPrivate;->removeInvite(Lcom/glympse/android/api/GInvite;Z)V
iget-object v1, p0, Lcom/glympse/android/lib/en;->oh:Lcom/glympse/android/lib/GTicketPrivate;
iget-object v2, p0, Lcom/glympse/android/lib/en;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const v3, 0x8000
iget-object v4, p0, Lcom/glympse/android/lib/en;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v1, v2, v5, v3, v4}, Lcom/glympse/android/lib/GTicketPrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
:goto_27
return v0
:cond_28
iget-object v1, p0, Lcom/glympse/android/lib/en;->oi:Lcom/glympse/android/lib/GInvitePrivate;
new-instance v2, Lcom/glympse/android/lib/hk;
iget-object v3, p0, Lcom/glympse/android/lib/en;->jx:Lcom/glympse/android/lib/l;
iget-object v3, v3, Lcom/glympse/android/lib/l;->hg:Ljava/lang/String;
iget-object v4, p0, Lcom/glympse/android/lib/en;->jx:Lcom/glympse/android/lib/l;
iget-object v4, v4, Lcom/glympse/android/lib/l;->hh:Ljava/lang/String;
invoke-direct {v2, v0, v3, v4}, Lcom/glympse/android/lib/hk;-><init>(ILjava/lang/String;Ljava/lang/String;)V
invoke-interface {v1, v2}, Lcom/glympse/android/lib/GInvitePrivate;->setError(Lcom/glympse/android/api/GServerError;)V
iget-object v0, p0, Lcom/glympse/android/lib/en;->oi:Lcom/glympse/android/lib/GInvitePrivate;
const/16 v1, 0x9
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GInvitePrivate;->setState(I)V
iget-object v0, p0, Lcom/glympse/android/lib/en;->oh:Lcom/glympse/android/lib/GTicketPrivate;
iget-object v1, p0, Lcom/glympse/android/lib/en;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/high16 v2, 0x1
iget-object v3, p0, Lcom/glympse/android/lib/en;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v0, v1, v5, v2, v3}, Lcom/glympse/android/lib/GTicketPrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
const/4 v0, 0x0
goto :goto_27
.end method
.method public url(Ljava/lang/StringBuilder;)Z
.registers 3
const-string v0, "invites/"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/glympse/android/lib/en;->mi:Ljava/lang/String;
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "/delete"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/4 v0, 0x0
return v0
.end method