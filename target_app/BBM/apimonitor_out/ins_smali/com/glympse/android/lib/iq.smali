.class  Lcom/glympse/android/lib/iq;
.super Ljava/lang/Object;
.source "TicketProtocol.java"
.implements Lcom/glympse/android/lib/GTicketProtocol;
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field private lf:Lcom/glympse/android/lib/GServerPost;
.field private lu:Lcom/glympse/android/lib/GCorrectedTime;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private a(Lcom/glympse/android/api/GTravelMode;)Lcom/glympse/android/core/GPrimitive;
.registers 5
if-nez p1, :cond_8
new-instance v0, Lcom/glympse/android/lib/Primitive;
invoke-direct {v0}, Lcom/glympse/android/lib/Primitive;-><init>()V
:cond_7
:goto_7
return-object v0
:cond_8
invoke-interface {p1}, Lcom/glympse/android/api/GTravelMode;->getMode()I
move-result v1
if-nez v1, :cond_14
new-instance v0, Lcom/glympse/android/lib/Primitive;
invoke-direct {v0}, Lcom/glympse/android/lib/Primitive;-><init>()V
goto :goto_7
:cond_14
new-instance v0, Lcom/glympse/android/lib/Primitive;
const/4 v2, 0x2
invoke-direct {v0, v2}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
const-string v2, "type"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v1}, Lcom/glympse/android/lib/ix;->w(I)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v2, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {p1}, Lcom/glympse/android/api/GTravelMode;->getSettings()Lcom/glympse/android/core/GPrimitive;
move-result-object v1
if-eqz v1, :cond_7
const-string v2, "settings"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v2, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
goto :goto_7
.end method
.method public addInvite(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/lib/GInvitePrivate;)V
.registers 6
invoke-interface {p2}, Lcom/glympse/android/lib/GInvitePrivate;->getType()I
move-result v0
if-nez v0, :cond_14
const/16 v0, 0x8
invoke-interface {p2, v0}, Lcom/glympse/android/lib/GInvitePrivate;->setState(I)V
iget-object v0, p0, Lcom/glympse/android/lib/iq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/4 v1, 0x4
const/high16 v2, 0x1
invoke-interface {p1, v0, v1, v2, p1}, Lcom/glympse/android/lib/GTicketPrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
:goto_13
return-void
:cond_14
iget-object v0, p0, Lcom/glympse/android/lib/iq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getRecipientsManager()Lcom/glympse/android/lib/GRecipientsManager;
move-result-object v0
invoke-interface {v0, p2}, Lcom/glympse/android/lib/GRecipientsManager;->addRecipient(Lcom/glympse/android/api/GInvite;)V
iget-object v0, p0, Lcom/glympse/android/lib/iq;->lf:Lcom/glympse/android/lib/GServerPost;
new-instance v1, Lcom/glympse/android/lib/ij;
iget-object v2, p0, Lcom/glympse/android/lib/iq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {v1, p1, p2, v2}, Lcom/glympse/android/lib/ij;-><init>(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/lib/GInvitePrivate;Lcom/glympse/android/lib/GGlympsePrivate;)V
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
goto :goto_13
.end method
.method public appendCompleted(Lcom/glympse/android/lib/GTicketPrivate;)V
.registers 11
const/4 v8, 0x1
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "[TicketProtocol.appendCompleted] Completing: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->getId()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v8, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
new-instance v7, Lcom/glympse/android/lib/Primitive;
invoke-direct {v7, v8}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->getExpireTime()J
move-result-wide v1
const-wide/16 v3, 0x0
const-string v0, "completed"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
new-instance v6, Lcom/glympse/android/lib/Primitive;
invoke-direct {v6, v8}, Lcom/glympse/android/lib/Primitive;-><init>(Z)V
move-object v0, p0
invoke-virtual/range {v0 .. v6}, Lcom/glympse/android/lib/iq;->prepareProperty(JJLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-interface {v7, v0}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
iget-object v0, p0, Lcom/glympse/android/lib/iq;->lf:Lcom/glympse/android/lib/GServerPost;
new-instance v1, Lcom/glympse/android/lib/id;
iget-object v2, p0, Lcom/glympse/android/lib/iq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {v1, v2, p1, v7}, Lcom/glympse/android/lib/id;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/core/GPrimitive;)V
invoke-interface {v0, v1, v8}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
return-void
.end method
.method public appendData(Lcom/glympse/android/lib/GTicketPrivate;JLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
.registers 15
const/4 v8, 0x1
iget-object v0, p0, Lcom/glympse/android/lib/iq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getCorrectedTime()Lcom/glympse/android/lib/GCorrectedTime;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/lib/GCorrectedTime;->getTime()J
move-result-wide v1
new-instance v7, Lcom/glympse/android/lib/Primitive;
invoke-direct {v7, v8}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
move-object v0, p0
move-wide v3, p2
move-object v5, p4
move-object v6, p5
invoke-virtual/range {v0 .. v6}, Lcom/glympse/android/lib/iq;->prepareProperty(JJLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-interface {v7, v0}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
iget-object v0, p0, Lcom/glympse/android/lib/iq;->lf:Lcom/glympse/android/lib/GServerPost;
new-instance v1, Lcom/glympse/android/lib/ar;
iget-object v2, p0, Lcom/glympse/android/lib/iq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->getId()Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v2, v3, v7}, Lcom/glympse/android/lib/ar;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
invoke-interface {v0, v1, v8}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
return-void
.end method
.method public clearTicket(Lcom/glympse/android/api/GTicket;ZZ)V
.registers 13
const-wide/16 v3, 0x0
const/4 v8, 0x1
iget-object v0, p0, Lcom/glympse/android/lib/iq;->lu:Lcom/glympse/android/lib/GCorrectedTime;
invoke-interface {v0}, Lcom/glympse/android/lib/GCorrectedTime;->getTime()J
move-result-wide v1
new-instance v7, Lcom/glympse/android/lib/Primitive;
invoke-direct {v7, v8}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
if-eqz p2, :cond_23
const-string v0, "message"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
new-instance v6, Lcom/glympse/android/lib/Primitive;
invoke-direct {v6}, Lcom/glympse/android/lib/Primitive;-><init>()V
move-object v0, p0
invoke-virtual/range {v0 .. v6}, Lcom/glympse/android/lib/iq;->prepareProperty(JJLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-interface {v7, v0}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
:cond_23
if-eqz p3, :cond_38
const-string v0, "destination"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
new-instance v6, Lcom/glympse/android/lib/Primitive;
invoke-direct {v6}, Lcom/glympse/android/lib/Primitive;-><init>()V
move-object v0, p0
invoke-virtual/range {v0 .. v6}, Lcom/glympse/android/lib/iq;->prepareProperty(JJLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-interface {v7, v0}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
:cond_38
invoke-interface {v7}, Lcom/glympse/android/core/GPrimitive;->size()I
move-result v0
if-lez v0, :cond_4e
iget-object v0, p0, Lcom/glympse/android/lib/iq;->lf:Lcom/glympse/android/lib/GServerPost;
new-instance v1, Lcom/glympse/android/lib/ar;
iget-object v2, p0, Lcom/glympse/android/lib/iq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->getId()Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v2, v3, v7}, Lcom/glympse/android/lib/ar;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
invoke-interface {v0, v1, v8}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
:cond_4e
return-void
.end method
.method public deleteInvite(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/lib/GInvitePrivate;)V
.registers 6
iget-object v0, p0, Lcom/glympse/android/lib/iq;->lf:Lcom/glympse/android/lib/GServerPost;
new-instance v1, Lcom/glympse/android/lib/en;
iget-object v2, p0, Lcom/glympse/android/lib/iq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {v1, v2, p1, p2}, Lcom/glympse/android/lib/en;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/lib/GInvitePrivate;)V
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
return-void
.end method
.method public deleteTicket(Lcom/glympse/android/api/GTicket;)V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/iq;->lf:Lcom/glympse/android/lib/GServerPost;
new-instance v1, Lcom/glympse/android/lib/if;
iget-object v2, p0, Lcom/glympse/android/lib/iq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {v1, v2, p1}, Lcom/glympse/android/lib/if;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/api/GTicket;)V
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
return-void
.end method
.method public expireTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/iq;->lf:Lcom/glympse/android/lib/GServerPost;
new-instance v1, Lcom/glympse/android/lib/ig;
iget-object v2, p0, Lcom/glympse/android/lib/iq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {v1, v2, p1}, Lcom/glympse/android/lib/ig;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/api/GTicket;)V
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
return-void
.end method
.method public ownTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/iq;->lf:Lcom/glympse/android/lib/GServerPost;
new-instance v1, Lcom/glympse/android/lib/il;
iget-object v2, p0, Lcom/glympse/android/lib/iq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {v1, v2, p1}, Lcom/glympse/android/lib/il;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GTicketPrivate;)V
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
return-void
.end method
.method public prepareEtaProperty(JJJ)Lcom/glympse/android/core/GPrimitive;
.registers 14
new-instance v6, Lcom/glympse/android/lib/Primitive;
const/4 v0, 0x2
invoke-direct {v6, v0}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
const-string v0, "eta"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v6, v0, p5, p6}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V
const-string v0, "eta_ts"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v6, v0, p3, p4}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V
const-wide/16 v3, 0x0
const-string v0, "eta"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
move-object v0, p0
move-wide v1, p1
invoke-virtual/range {v0 .. v6}, Lcom/glympse/android/lib/iq;->prepareProperty(JJLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
return-object v0
.end method
.method public prepareMessageProperty(JLjava/lang/String;)Lcom/glympse/android/core/GPrimitive;
.registers 11
iget-object v0, p0, Lcom/glympse/android/lib/iq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getMessagesManager()Lcom/glympse/android/lib/GMessagesManager;
move-result-object v0
invoke-interface {v0, p3}, Lcom/glympse/android/lib/GMessagesManager;->addMessage(Ljava/lang/String;)V
const-wide/16 v3, 0x0
const-string v0, "message"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
new-instance v6, Lcom/glympse/android/lib/Primitive;
invoke-direct {v6, p3}, Lcom/glympse/android/lib/Primitive;-><init>(Ljava/lang/String;)V
move-object v0, p0
move-wide v1, p1
invoke-virtual/range {v0 .. v6}, Lcom/glympse/android/lib/iq;->prepareProperty(JJLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
return-object v0
.end method
.method public preparePlaceProperty(JLcom/glympse/android/api/GPlace;)Lcom/glympse/android/core/GPrimitive;
.registers 11
iget-object v0, p0, Lcom/glympse/android/lib/iq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getPlacesManager()Lcom/glympse/android/lib/GPlacesManager;
move-result-object v0
invoke-interface {v0, p3}, Lcom/glympse/android/lib/GPlacesManager;->addPlace(Lcom/glympse/android/api/GPlace;)V
new-instance v6, Lcom/glympse/android/lib/Primitive;
const/4 v0, 0x2
invoke-direct {v6, v0}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
const-string v0, "lat"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p3}, Lcom/glympse/android/api/GPlace;->getLatitude()D
move-result-wide v1
invoke-interface {v6, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;D)V
const-string v0, "lng"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p3}, Lcom/glympse/android/api/GPlace;->getLongitude()D
move-result-wide v1
invoke-interface {v6, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;D)V
invoke-interface {p3}, Lcom/glympse/android/api/GPlace;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_3c
const-string v1, "name"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v6, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_3c
const-wide/16 v3, 0x0
const-string v0, "destination"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
move-object v0, p0
move-wide v1, p1
invoke-virtual/range {v0 .. v6}, Lcom/glympse/android/lib/iq;->prepareProperty(JJLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
return-object v0
.end method
.method public prepareProperty(JJLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/core/GPrimitive;
.registers 9
new-instance v0, Lcom/glympse/android/lib/Primitive;
const/4 v1, 0x2
invoke-direct {v0, v1}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
const-string v1, "t"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1, p1, p2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V
const-string v1, "pid"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1, p3, p4}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V
const-string v1, "n"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1, p5}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "v"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1, p6}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
return-object v0
.end method
.method public prepareRouteProperty(JLcom/glympse/android/api/GTrack;)Lcom/glympse/android/core/GPrimitive;
.registers 11
new-instance v6, Lcom/glympse/android/lib/Primitive;
const/4 v0, 0x2
invoke-direct {v6, v0}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
invoke-static {p3}, Lcom/glympse/android/lib/ba;->a(Lcom/glympse/android/api/GTrack;)Ljava/lang/String;
move-result-object v0
const-string v1, "points"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v6, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
check-cast p3, Lcom/glympse/android/lib/GTrackPrivate;
invoke-interface {p3}, Lcom/glympse/android/lib/GTrackPrivate;->getSource()I
move-result v0
if-eqz v0, :cond_2a
const-string v1, "src"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/glympse/android/lib/Primitive;
int-to-long v3, v0
invoke-direct {v2, v3, v4}, Lcom/glympse/android/lib/Primitive;-><init>(J)V
invoke-interface {v6, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
:cond_2a
invoke-interface {p3}, Lcom/glympse/android/lib/GTrackPrivate;->getDistance()I
move-result v0
if-eqz v0, :cond_3f
const-string v1, "distance"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/glympse/android/lib/Primitive;
int-to-long v3, v0
invoke-direct {v2, v3, v4}, Lcom/glympse/android/lib/Primitive;-><init>(J)V
invoke-interface {v6, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
:cond_3f
const-wide/16 v3, 0x0
const-string v0, "route"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
move-object v0, p0
move-wide v1, p1
invoke-virtual/range {v0 .. v6}, Lcom/glympse/android/lib/iq;->prepareProperty(JJLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
return-object v0
.end method
.method public prepareTravelModeProperty(JLcom/glympse/android/api/GTravelMode;)Lcom/glympse/android/core/GPrimitive;
.registers 11
const-wide/16 v3, 0x0
const-string v0, "travel_mode"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-direct {p0, p3}, Lcom/glympse/android/lib/iq;->a(Lcom/glympse/android/api/GTravelMode;)Lcom/glympse/android/core/GPrimitive;
move-result-object v6
move-object v0, p0
move-wide v1, p1
invoke-virtual/range {v0 .. v6}, Lcom/glympse/android/lib/iq;->prepareProperty(JJLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
return-object v0
.end method
.method public refreshInvites()V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/iq;->lu:Lcom/glympse/android/lib/GCorrectedTime;
invoke-interface {v0}, Lcom/glympse/android/lib/GCorrectedTime;->getInvitesLastSince()J
move-result-wide v0
iget-object v2, p0, Lcom/glympse/android/lib/iq;->lu:Lcom/glympse/android/lib/GCorrectedTime;
const/4 v3, 0x0
invoke-interface {v2, v3}, Lcom/glympse/android/lib/GCorrectedTime;->getInvitesLastRefresh(Z)J
move-result-wide v2
cmp-long v0, v0, v2
if-ltz v0, :cond_12
:goto_11
return-void
:cond_12
iget-object v0, p0, Lcom/glympse/android/lib/iq;->lf:Lcom/glympse/android/lib/GServerPost;
new-instance v1, Lcom/glympse/android/lib/jp;
iget-object v2, p0, Lcom/glympse/android/lib/iq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {v1, v2}, Lcom/glympse/android/lib/jp;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;)V
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
goto :goto_11
.end method
.method public refreshTicket(Lcom/glympse/android/lib/GTicketPrivate;Z)V
.registers 6
iget-object v0, p0, Lcom/glympse/android/lib/iq;->lf:Lcom/glympse/android/lib/GServerPost;
new-instance v1, Lcom/glympse/android/lib/it;
iget-object v2, p0, Lcom/glympse/android/lib/iq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {v1, v2, p1, p2}, Lcom/glympse/android/lib/it;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GTicketPrivate;Z)V
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
return-void
.end method
.method public setVisibility(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/core/GPrimitive;)V
.registers 6
iget-object v0, p0, Lcom/glympse/android/lib/iq;->lf:Lcom/glympse/android/lib/GServerPost;
new-instance v1, Lcom/glympse/android/lib/hq;
iget-object v2, p0, Lcom/glympse/android/lib/iq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {v1, v2, p1, p2}, Lcom/glympse/android/lib/hq;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/api/GTicket;Lcom/glympse/android/core/GPrimitive;)V
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
return-void
.end method
.method public start(Lcom/glympse/android/lib/GGlympsePrivate;)V
.registers 3
iput-object p1, p0, Lcom/glympse/android/lib/iq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {p1}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/iq;->lf:Lcom/glympse/android/lib/GServerPost;
invoke-interface {p1}, Lcom/glympse/android/lib/GGlympsePrivate;->getCorrectedTime()Lcom/glympse/android/lib/GCorrectedTime;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/iq;->lu:Lcom/glympse/android/lib/GCorrectedTime;
return-void
.end method
.method public stop()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/iq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iput-object v0, p0, Lcom/glympse/android/lib/iq;->lf:Lcom/glympse/android/lib/GServerPost;
iput-object v0, p0, Lcom/glympse/android/lib/iq;->lu:Lcom/glympse/android/lib/GCorrectedTime;
return-void
.end method
.method public updateInvite(Lcom/glympse/android/api/GInvite;)V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/iq;->lf:Lcom/glympse/android/lib/GServerPost;
new-instance v1, Lcom/glympse/android/lib/ex;
iget-object v2, p0, Lcom/glympse/android/lib/iq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {v1, v2, p1}, Lcom/glympse/android/lib/ex;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/api/GInvite;)V
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
return-void
.end method
.method public updateTicket(Lcom/glympse/android/api/GTicket;Ljava/lang/String;Lcom/glympse/android/api/GPlace;)V
.registers 10
const/4 v5, 0x1
new-instance v0, Lcom/glympse/android/lib/Primitive;
invoke-direct {v0, v5}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
iget-object v1, p0, Lcom/glympse/android/lib/iq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getCorrectedTime()Lcom/glympse/android/lib/GCorrectedTime;
move-result-object v1
invoke-interface {v1}, Lcom/glympse/android/lib/GCorrectedTime;->getTime()J
move-result-wide v1
invoke-static {p2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_1d
invoke-virtual {p0, v1, v2, p2}, Lcom/glympse/android/lib/iq;->prepareMessageProperty(JLjava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v3
invoke-interface {v0, v3}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
:cond_1d
if-eqz p3, :cond_26
invoke-virtual {p0, v1, v2, p3}, Lcom/glympse/android/lib/iq;->preparePlaceProperty(JLcom/glympse/android/api/GPlace;)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
:cond_26
invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->size()I
move-result v1
if-lez v1, :cond_3c
iget-object v1, p0, Lcom/glympse/android/lib/iq;->lf:Lcom/glympse/android/lib/GServerPost;
new-instance v2, Lcom/glympse/android/lib/ar;
iget-object v3, p0, Lcom/glympse/android/lib/iq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->getId()Ljava/lang/String;
move-result-object v4
invoke-direct {v2, v3, v4, v0}, Lcom/glympse/android/lib/ar;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
invoke-interface {v1, v2, v5}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
:cond_3c
return-void
.end method
.method public updateTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/iq;->lf:Lcom/glympse/android/lib/GServerPost;
new-instance v1, Lcom/glympse/android/lib/ir;
iget-object v2, p0, Lcom/glympse/android/lib/iq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {v1, v2, p1}, Lcom/glympse/android/lib/ir;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GTicketPrivate;)V
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
return-void
.end method
.method public updateTicketEta(Lcom/glympse/android/api/GTicket;IJJILcom/glympse/android/api/GTrack;)V
.registers 19
iget-object v1, p0, Lcom/glympse/android/lib/iq;->lu:Lcom/glympse/android/lib/GCorrectedTime;
invoke-interface {v1}, Lcom/glympse/android/lib/GCorrectedTime;->getTime()J
move-result-wide v2
new-instance v9, Lcom/glympse/android/lib/Primitive;
const/4 v1, 0x1
invoke-direct {v9, v1}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
const/4 v8, 0x1
if-nez p2, :cond_53
const-wide/16 v4, 0x0
const-string v1, "eta"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
new-instance v7, Lcom/glympse/android/lib/Primitive;
invoke-direct {v7}, Lcom/glympse/android/lib/Primitive;-><init>()V
move-object v1, p0
invoke-virtual/range {v1 .. v7}, Lcom/glympse/android/lib/iq;->prepareProperty(JJLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
invoke-interface {v9, v1}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
:goto_24
:cond_24
if-nez p7, :cond_67
const-wide/16 v4, 0x0
const-string v1, "route"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
new-instance v7, Lcom/glympse/android/lib/Primitive;
invoke-direct {v7}, Lcom/glympse/android/lib/Primitive;-><init>()V
move-object v1, p0
invoke-virtual/range {v1 .. v7}, Lcom/glympse/android/lib/iq;->prepareProperty(JJLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
invoke-interface {v9, v1}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
move v1, v8
:goto_3c
invoke-interface {v9}, Lcom/glympse/android/core/GPrimitive;->size()I
move-result v2
if-lez v2, :cond_52
iget-object v2, p0, Lcom/glympse/android/lib/iq;->lf:Lcom/glympse/android/lib/GServerPost;
new-instance v3, Lcom/glympse/android/lib/ar;
iget-object v4, p0, Lcom/glympse/android/lib/iq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->getId()Ljava/lang/String;
move-result-object v5
invoke-direct {v3, v4, v5, v9}, Lcom/glympse/android/lib/ar;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
invoke-interface {v2, v3, v1}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
:cond_52
return-void
:cond_53
if-lez p2, :cond_24
const-wide/16 v4, 0x0
cmp-long v1, p5, v4
if-lez v1, :cond_24
move-object v1, p0
move-wide v4, p3
move-wide v6, p5
invoke-virtual/range {v1 .. v7}, Lcom/glympse/android/lib/iq;->prepareEtaProperty(JJJ)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
invoke-interface {v9, v1}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
const/4 v8, 0x0
goto :goto_24
:cond_67
if-lez p7, :cond_76
if-eqz p8, :cond_76
move-object/from16 v0, p8
invoke-virtual {p0, v2, v3, v0}, Lcom/glympse/android/lib/iq;->prepareRouteProperty(JLcom/glympse/android/api/GTrack;)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
invoke-interface {v9, v1}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
const/4 v1, 0x0
goto :goto_3c
:cond_76
move v1, v8
goto :goto_3c
.end method
.method public updateTravelMode(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/api/GTravelMode;)V
.registers 9
const-wide/16 v2, 0x0
const-string v0, "travel_mode"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-direct {p0, p2}, Lcom/glympse/android/lib/iq;->a(Lcom/glympse/android/api/GTravelMode;)Lcom/glympse/android/core/GPrimitive;
move-result-object v5
move-object v0, p0
move-object v1, p1
invoke-virtual/range {v0 .. v5}, Lcom/glympse/android/lib/iq;->appendData(Lcom/glympse/android/lib/GTicketPrivate;JLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
return-void
.end method