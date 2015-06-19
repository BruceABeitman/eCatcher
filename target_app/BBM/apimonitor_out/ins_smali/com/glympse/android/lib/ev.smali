.class public Lcom/glympse/android/lib/ev;
.super Lcom/glympse/android/lib/k;
.source "InviteTicketParser.java"
.field protected jA:J
.field private oO:Lcom/glympse/android/lib/es;
.field protected oU:J
.field protected oV:Ljava/lang/String;
.field private oW:Lcom/glympse/android/lib/json/b;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/glympse/android/lib/k;-><init>()V
return-void
.end method
.method public constructor <init>(Lcom/glympse/android/lib/json/GJsonHandlerStack;Lcom/glympse/android/lib/es;)V
.registers 3
invoke-direct {p0}, Lcom/glympse/android/lib/k;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/ev;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
iput-object p2, p0, Lcom/glympse/android/lib/ev;->oO:Lcom/glympse/android/lib/es;
return-void
.end method
.method public endArray(I)Z
.registers 4
const/4 v1, 0x1
if-ne v1, p1, :cond_8
iget-object v0, p0, Lcom/glympse/android/lib/ev;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
invoke-interface {v0}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->popHandler()V
:cond_8
return v1
.end method
.method public endObject(I)Z
.registers 3
const/4 v0, 0x2
if-ne v0, p1, :cond_13
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oW:Lcom/glympse/android/lib/json/b;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oW:Lcom/glympse/android/lib/json/b;
invoke-virtual {v0}, Lcom/glympse/android/lib/json/b;->de()Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/glympse/android/lib/ev;->f(Lcom/glympse/android/core/GPrimitive;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/ev;->oW:Lcom/glympse/android/lib/json/b;
:cond_13
const/4 v0, 0x1
return v0
.end method
.method public bridge synthetic endPair(I)Z
.registers 3
invoke-super {p0, p1}, Lcom/glympse/android/lib/k;->endPair(I)Z
move-result v0
return v0
.end method
.method public f(Lcom/glympse/android/core/GPrimitive;)V
.registers 12
const-wide/16 v8, 0x0
const/4 v7, 0x1
if-nez p1, :cond_6
:goto_5
:cond_5
return-void
:cond_6
new-instance v0, Lcom/glympse/android/lib/at;
iget-wide v1, p0, Lcom/glympse/android/lib/ev;->oU:J
iget-wide v3, p0, Lcom/glympse/android/lib/ev;->jA:J
iget-object v5, p0, Lcom/glympse/android/lib/ev;->oV:Ljava/lang/String;
move-object v6, p1
invoke-direct/range {v0 .. v6}, Lcom/glympse/android/lib/at;-><init>(JJLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
const/16 v1, 0x40
invoke-interface {p1}, Lcom/glympse/android/core/GPrimitive;->type()I
move-result v2
if-ne v1, v2, :cond_3b
move v1, v7
:goto_1b
if-eqz v1, :cond_3d
iget-object v2, p0, Lcom/glympse/android/lib/ev;->oO:Lcom/glympse/android/lib/es;
iget-object v2, v2, Lcom/glympse/android/lib/es;->oM:Lcom/glympse/android/hal/GVector;
invoke-virtual {v2, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
:goto_24
iget-wide v2, p0, Lcom/glympse/android/lib/ev;->jA:J
cmp-long v0, v8, v2
if-nez v0, :cond_5
if-eqz v1, :cond_9d
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oV:Ljava/lang/String;
const-string v1, "message"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_50
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oO:Lcom/glympse/android/lib/es;
iput-boolean v7, v0, Lcom/glympse/android/lib/es;->oG:Z
goto :goto_5
:cond_3b
const/4 v1, 0x0
goto :goto_1b
:cond_3d
iget-object v2, p0, Lcom/glympse/android/lib/ev;->oO:Lcom/glympse/android/lib/es;
iget-object v2, v2, Lcom/glympse/android/lib/es;->jz:Lcom/glympse/android/hal/GVector;
invoke-virtual {v2, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oO:Lcom/glympse/android/lib/es;
iget-object v0, v0, Lcom/glympse/android/lib/es;->oE:Lcom/glympse/android/lib/GTicketPrivate;
iget-wide v2, p0, Lcom/glympse/android/lib/ev;->jA:J
iget-object v4, p0, Lcom/glympse/android/lib/ev;->oV:Ljava/lang/String;
invoke-interface {v0, v2, v3, v4, p1}, Lcom/glympse/android/lib/GTicketPrivate;->setProperty(JLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
goto :goto_24
:cond_50
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oV:Ljava/lang/String;
const-string v1, "destination"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5f
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oO:Lcom/glympse/android/lib/es;
iput-boolean v7, v0, Lcom/glympse/android/lib/es;->oH:Z
goto :goto_5
:cond_5f
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oV:Ljava/lang/String;
const-string v1, "app"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_6e
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oO:Lcom/glympse/android/lib/es;
iput-boolean v7, v0, Lcom/glympse/android/lib/es;->oI:Z
goto :goto_5
:cond_6e
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oV:Ljava/lang/String;
const-string v1, "eta"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_7d
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oO:Lcom/glympse/android/lib/es;
iput-boolean v7, v0, Lcom/glympse/android/lib/es;->oJ:Z
goto :goto_5
:cond_7d
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oV:Ljava/lang/String;
const-string v1, "route"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_8d
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oO:Lcom/glympse/android/lib/es;
iput-boolean v7, v0, Lcom/glympse/android/lib/es;->oK:Z
goto/16 :goto_5
:cond_8d
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oV:Ljava/lang/String;
const-string v1, "travel_mode"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oO:Lcom/glympse/android/lib/es;
iput-boolean v7, v0, Lcom/glympse/android/lib/es;->oL:Z
goto/16 :goto_5
:cond_9d
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oV:Ljava/lang/String;
const-string v1, "end_time"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_b4
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oO:Lcom/glympse/android/lib/es;
iget-object v0, v0, Lcom/glympse/android/lib/es;->oE:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {p1}, Lcom/glympse/android/core/GPrimitive;->getLong()J
move-result-wide v1
invoke-interface {v0, v1, v2, v7}, Lcom/glympse/android/lib/GTicketPrivate;->setExpireTime(JZ)V
goto/16 :goto_5
:cond_b4
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oV:Ljava/lang/String;
const-string v1, "message"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_cb
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oO:Lcom/glympse/android/lib/es;
iget-object v0, v0, Lcom/glympse/android/lib/es;->oE:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {p1}, Lcom/glympse/android/core/GPrimitive;->getString()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GTicketPrivate;->setMessage(Ljava/lang/String;)V
goto/16 :goto_5
:cond_cb
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oV:Ljava/lang/String;
const-string v1, "destination"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_101
const-string v0, "lat"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getDouble(Ljava/lang/String;)D
move-result-wide v1
const-string v0, "lng"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getDouble(Ljava/lang/String;)D
move-result-wide v3
const-string v0, "name"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
new-instance v0, Lcom/glympse/android/lib/gw;
invoke-direct/range {v0 .. v5}, Lcom/glympse/android/lib/gw;-><init>(DDLjava/lang/String;)V
iget-object v1, p0, Lcom/glympse/android/lib/ev;->oO:Lcom/glympse/android/lib/es;
iget-object v1, v1, Lcom/glympse/android/lib/es;->oE:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GTicketPrivate;->setDestination(Lcom/glympse/android/api/GPlace;)V
goto/16 :goto_5
:cond_101
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oV:Ljava/lang/String;
const-string v1, "app"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_137
const-string v0, "id"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "name"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "icon"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {p1, v2}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/glympse/android/lib/ev;->oO:Lcom/glympse/android/lib/es;
iget-object v3, v3, Lcom/glympse/android/lib/es;->oE:Lcom/glympse/android/lib/GTicketPrivate;
new-instance v4, Lcom/glympse/android/lib/o;
invoke-direct {v4, v0, v1, v2}, Lcom/glympse/android/lib/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v3, v4}, Lcom/glympse/android/lib/GTicketPrivate;->setOwner(Lcom/glympse/android/api/GAppProfile;)V
goto/16 :goto_5
:cond_137
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oV:Ljava/lang/String;
const-string v1, "eta"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_164
const-string v0, "eta"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J
move-result-wide v2
const-string v0, "eta_ts"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J
move-result-wide v0
iget-object v4, p0, Lcom/glympse/android/lib/ev;->oO:Lcom/glympse/android/lib/es;
iget-object v4, v4, Lcom/glympse/android/lib/es;->oE:Lcom/glympse/android/lib/GTicketPrivate;
cmp-long v5, v8, v0
if-nez v5, :cond_15f
iget-wide v0, p0, Lcom/glympse/android/lib/ev;->oU:J
:cond_15f
invoke-interface {v4, v0, v1, v2, v3}, Lcom/glympse/android/lib/GTicketPrivate;->setEta(JJ)V
goto/16 :goto_5
:cond_164
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oV:Ljava/lang/String;
const-string v1, "route"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1a5
const-string v0, "src"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J
move-result-wide v0
long-to-int v1, v0
const-string v0, "distance"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J
move-result-wide v2
long-to-int v2, v2
const-string v0, "points"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/lib/ba;->n(Ljava/lang/String;)Lcom/glympse/android/api/GTrack;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTrackPrivate;
if-eqz v0, :cond_19c
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GTrackPrivate;->setSource(I)V
invoke-interface {v0, v2}, Lcom/glympse/android/lib/GTrackPrivate;->setDistance(I)V
:cond_19c
iget-object v1, p0, Lcom/glympse/android/lib/ev;->oO:Lcom/glympse/android/lib/es;
iget-object v1, v1, Lcom/glympse/android/lib/es;->oE:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GTicketPrivate;->setRoute(Lcom/glympse/android/api/GTrack;)V
goto/16 :goto_5
:cond_1a5
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oV:Ljava/lang/String;
const-string v1, "travel_mode"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1d5
const-string v0, "type"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/lib/ix;->E(Ljava/lang/String;)I
move-result v0
const-string v1, "settings"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
iget-object v2, p0, Lcom/glympse/android/lib/ev;->oO:Lcom/glympse/android/lib/es;
iget-object v2, v2, Lcom/glympse/android/lib/es;->oE:Lcom/glympse/android/lib/GTicketPrivate;
new-instance v3, Lcom/glympse/android/lib/ix;
invoke-direct {v3, v0, v1}, Lcom/glympse/android/lib/ix;-><init>(ILcom/glympse/android/core/GPrimitive;)V
invoke-interface {v2, v3}, Lcom/glympse/android/lib/GTicketPrivate;->setTravelMode(Lcom/glympse/android/api/GTravelMode;)V
goto/16 :goto_5
:cond_1d5
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oV:Ljava/lang/String;
const-string v1, "start_time"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1ec
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oO:Lcom/glympse/android/lib/es;
iget-object v0, v0, Lcom/glympse/android/lib/es;->oE:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {p1}, Lcom/glympse/android/core/GPrimitive;->getLong()J
move-result-wide v1
invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GTicketPrivate;->setStartTime(J)V
goto/16 :goto_5
:cond_1ec
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oV:Ljava/lang/String;
const-string v1, "completed"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1ff
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oO:Lcom/glympse/android/lib/es;
iget-object v0, v0, Lcom/glympse/android/lib/es;->oE:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->setCompleted()V
goto/16 :goto_5
:cond_1ff
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oV:Ljava/lang/String;
const-string v1, "name"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_216
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oO:Lcom/glympse/android/lib/es;
iget-object v0, v0, Lcom/glympse/android/lib/es;->oz:Lcom/glympse/android/lib/GUserPrivate;
invoke-interface {p1}, Lcom/glympse/android/core/GPrimitive;->getString()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GUserPrivate;->setNicknameCore(Ljava/lang/String;)V
goto/16 :goto_5
:cond_216
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oV:Ljava/lang/String;
const-string v1, "avatar"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_233
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oO:Lcom/glympse/android/lib/es;
iget-object v0, v0, Lcom/glympse/android/lib/es;->oz:Lcom/glympse/android/lib/GUserPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GUserPrivate;->getAvatar()Lcom/glympse/android/api/GImage;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GImagePrivate;
invoke-interface {p1}, Lcom/glympse/android/core/GPrimitive;->getString()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GImagePrivate;->setUrl(Ljava/lang/String;)V
goto/16 :goto_5
:cond_233
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oV:Ljava/lang/String;
const-string v1, "owner"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5
iget-object v0, p0, Lcom/glympse/android/lib/ev;->oO:Lcom/glympse/android/lib/es;
iget-object v0, v0, Lcom/glympse/android/lib/es;->oz:Lcom/glympse/android/lib/GUserPrivate;
invoke-interface {p1}, Lcom/glympse/android/core/GPrimitive;->getString()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GUserPrivate;->setId(Ljava/lang/String;)V
goto/16 :goto_5
.end method
.method public primitive(ILcom/glympse/android/lib/json/GJsonPrimitive;)Z
.registers 6
const/4 v2, 0x1
const/4 v0, 0x2
if-ne v0, p1, :cond_14
iget-object v0, p0, Lcom/glympse/android/lib/ev;->he:Ljava/lang/String;
const-string v1, "t"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_15
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/lib/ev;->oU:J
:goto_14
:cond_14
return v2
:cond_15
iget-object v0, p0, Lcom/glympse/android/lib/ev;->he:Ljava/lang/String;
const-string v1, "pid"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_26
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/lib/ev;->jA:J
goto :goto_14
:cond_26
iget-object v0, p0, Lcom/glympse/android/lib/ev;->he:Ljava/lang/String;
const-string v1, "n"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_14
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/ev;->oV:Ljava/lang/String;
goto :goto_14
.end method
.method public startObject(I)Z
.registers 4
const/4 v0, 0x2
if-ne v0, p1, :cond_7
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/glympse/android/lib/ev;->jA:J
:cond_7
const/4 v0, 0x1
return v0
.end method
.method public startPair(ILjava/lang/String;)Z
.registers 5
iput-object p2, p0, Lcom/glympse/android/lib/ev;->he:Ljava/lang/String;
const/4 v0, 0x2
if-ne v0, p1, :cond_1f
iget-object v0, p0, Lcom/glympse/android/lib/ev;->he:Ljava/lang/String;
const-string v1, "v"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1f
new-instance v0, Lcom/glympse/android/lib/json/b;
iget-object v1, p0, Lcom/glympse/android/lib/ev;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
invoke-direct {v0, v1, p1}, Lcom/glympse/android/lib/json/b;-><init>(Lcom/glympse/android/lib/json/GJsonHandlerStack;I)V
iput-object v0, p0, Lcom/glympse/android/lib/ev;->oW:Lcom/glympse/android/lib/json/b;
iget-object v0, p0, Lcom/glympse/android/lib/ev;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
iget-object v1, p0, Lcom/glympse/android/lib/ev;->oW:Lcom/glympse/android/lib/json/b;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->pushHandler(Lcom/glympse/android/lib/json/GJsonHandler;)V
:cond_1f
const/4 v0, 0x1
return v0
.end method