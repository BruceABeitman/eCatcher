.class  Lcom/glympse/android/lib/hd;
.super Lcom/glympse/android/lib/ek;
.source "RequestInviteCreate.java"
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/lib/GInvitePrivate;)V
.registers 5
invoke-direct {p0}, Lcom/glympse/android/lib/ek;-><init>()V
iput-object p2, p0, Lcom/glympse/android/lib/hd;->iy:Lcom/glympse/android/api/GEventSink;
const/4 v0, 0x4
iput v0, p0, Lcom/glympse/android/lib/hd;->od:I
const/high16 v0, 0x2
iput v0, p0, Lcom/glympse/android/lib/hd;->oe:I
const/high16 v0, 0x4
iput v0, p0, Lcom/glympse/android/lib/hd;->of:I
const/high16 v0, 0x8
iput v0, p0, Lcom/glympse/android/lib/hd;->og:I
iput-object p2, p0, Lcom/glympse/android/lib/hd;->oh:Lcom/glympse/android/lib/GTicketPrivate;
iput-object p3, p0, Lcom/glympse/android/lib/hd;->oi:Lcom/glympse/android/lib/GInvitePrivate;
iput-object p1, p0, Lcom/glympse/android/lib/hd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {p3}, Lcom/glympse/android/lib/GInvitePrivate;->getMessage()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/hd;->oa:Ljava/lang/String;
invoke-virtual {p0}, Lcom/glympse/android/lib/hd;->cd()V
return-void
.end method
.method public a(Ljava/lang/StringBuilder;)V
.registers 3
const-string v0, "users/self/create_request"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
return-void
.end method
.method public post()Ljava/lang/String;
.registers 9
const/16 v7, 0x7d
const/16 v6, 0x22
new-instance v1, Ljava/lang/StringBuilder;
const/16 v0, 0x100
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V
const-string v0, "{\"duration\":"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/glympse/android/lib/hd;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getDurationRaw()I
move-result v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/glympse/android/lib/hd;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getExpireTime()J
move-result-wide v2
const-wide/16 v4, 0x0
cmp-long v0, v4, v2
if-eqz v0, :cond_2d
const-string v0, ",\"end_time\":"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
:cond_2d
iget-object v0, p0, Lcom/glympse/android/lib/hd;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_48
const-string v2, ",\"message\":\""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->jsonEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_48
iget-object v0, p0, Lcom/glympse/android/lib/hd;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getDestination()Lcom/glympse/android/api/GPlace;
move-result-object v0
if-eqz v0, :cond_8a
invoke-interface {v0}, Lcom/glympse/android/api/GPlace;->hasLocation()Z
move-result v2
if-eqz v2, :cond_8a
const-string v2, ",\"destination\":{\"lat\":"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-interface {v0}, Lcom/glympse/android/api/GPlace;->getLatitude()D
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
const-string v2, ",\"lng\":"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-interface {v0}, Lcom/glympse/android/api/GPlace;->getLongitude()D
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
invoke-interface {v0}, Lcom/glympse/android/api/GPlace;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_87
const-string v2, ",\"name\":\""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->jsonEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_87
invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_8a
iget-object v0, p0, Lcom/glympse/android/lib/hd;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getInvites()Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/core/GArray;->length()I
move-result v2
if-lez v2, :cond_dc
const/4 v2, 0x0
invoke-interface {v0, v2}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GInvite;
const-string v2, ",\"recipient\":{\"type\":\""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getType()I
move-result v2
invoke-static {v2}, Lcom/glympse/android/lib/ej;->n(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, "\",\"address\":\""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getAddress()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->jsonEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_d9
const-string v2, ",\"name\":\""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->jsonEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_d9
invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_dc
invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public process()Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/hd;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->removeAllInvites()V
iget-object v0, p0, Lcom/glympse/android/lib/hd;->oh:Lcom/glympse/android/lib/GTicketPrivate;
iget-object v1, p0, Lcom/glympse/android/lib/hd;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GTicketPrivate;->addInvite(Lcom/glympse/android/api/GInvite;)Z
invoke-super {p0}, Lcom/glympse/android/lib/ek;->process()Z
move-result v0
return v0
.end method