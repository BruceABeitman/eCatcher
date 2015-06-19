.class public Lcom/glympse/android/lib/jq;
.super Lcom/glympse/android/lib/k;
.source "UserInvites.java"
.field public ir:J
.field public mp:Lcom/glympse/android/hal/GVector;
.field private oi:Lcom/glympse/android/lib/GInvitePrivate;
.field public uh:J
.field public ui:Z
.field public uj:Lcom/glympse/android/lib/fu;
.method public constructor <init>()V
.registers 4
const-wide/16 v1, 0x0
invoke-direct {p0}, Lcom/glympse/android/lib/k;-><init>()V
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/jq;->mp:Lcom/glympse/android/hal/GVector;
iput-wide v1, p0, Lcom/glympse/android/lib/jq;->ir:J
iput-wide v1, p0, Lcom/glympse/android/lib/jq;->uh:J
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/lib/jq;->ui:Z
return-void
.end method
.method public endObject(I)Z
.registers 5
const/4 v2, 0x1
if-ne v2, p1, :cond_9
iget-object v0, p0, Lcom/glympse/android/lib/jq;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
invoke-interface {v0}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->popHandler()V
:goto_8
:cond_8
return v2
:cond_9
const/4 v0, 0x4
if-ne p1, v0, :cond_8
iget-object v0, p0, Lcom/glympse/android/lib/jq;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GInvitePrivate;->getTicketId()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/glympse/android/lib/jq;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GInvitePrivate;->getCode()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/glympse/android/lib/jq;->mp:Lcom/glympse/android/hal/GVector;
iget-object v1, p0, Lcom/glympse/android/lib/jq;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
:cond_23
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/jq;->oi:Lcom/glympse/android/lib/GInvitePrivate;
goto :goto_8
.end method
.method public bridge synthetic endPair(I)Z
.registers 3
invoke-super {p0, p1}, Lcom/glympse/android/lib/k;->endPair(I)Z
move-result v0
return v0
.end method
.method public primitive(ILcom/glympse/android/lib/json/GJsonPrimitive;)Z
.registers 7
const/4 v3, 0x1
packed-switch p1, :pswitch_data_1a6
:goto_4
:cond_4
return v3
:pswitch_5
iget-object v0, p0, Lcom/glympse/android/lib/jq;->he:Ljava/lang/String;
const-string v1, "result"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4
invoke-virtual {p2, v3}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/jq;->hf:Ljava/lang/String;
goto :goto_4
:pswitch_16
iget-object v0, p0, Lcom/glympse/android/lib/jq;->he:Ljava/lang/String;
const-string v1, "last_refresh"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_27
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/lib/jq;->ir:J
goto :goto_4
:cond_27
iget-object v0, p0, Lcom/glympse/android/lib/jq;->he:Ljava/lang/String;
const-string v1, "post_rate"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_38
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/lib/jq;->uh:J
goto :goto_4
:cond_38
iget-object v0, p0, Lcom/glympse/android/lib/jq;->he:Ljava/lang/String;
const-string v1, "refresh_history"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_49
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getBool()Z
move-result v0
iput-boolean v0, p0, Lcom/glympse/android/lib/jq;->ui:Z
goto :goto_4
:cond_49
iget-object v0, p0, Lcom/glympse/android/lib/jq;->he:Ljava/lang/String;
const-string v1, "time"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5a
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/lib/jq;->_time:J
goto :goto_4
:cond_5a
iget-object v0, p0, Lcom/glympse/android/lib/jq;->he:Ljava/lang/String;
const-string v1, "error"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_6b
invoke-virtual {p2, v3}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/jq;->hg:Ljava/lang/String;
goto :goto_4
:cond_6b
iget-object v0, p0, Lcom/glympse/android/lib/jq;->he:Ljava/lang/String;
const-string v1, "error_detail"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4
invoke-virtual {p2, v3}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/jq;->hh:Ljava/lang/String;
goto :goto_4
:pswitch_7c
iget-object v0, p0, Lcom/glympse/android/lib/jq;->uj:Lcom/glympse/android/lib/fu;
if-eqz v0, :cond_4
iget-object v0, p0, Lcom/glympse/android/lib/jq;->he:Ljava/lang/String;
const-string v1, "mode"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_99
invoke-virtual {p2, v3}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getString(Z)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/lib/fu;->w(Ljava/lang/String;)I
move-result v0
iget-object v1, p0, Lcom/glympse/android/lib/jq;->uj:Lcom/glympse/android/lib/fu;
invoke-virtual {v1, v0}, Lcom/glympse/android/lib/fu;->o(I)V
goto/16 :goto_4
:cond_99
iget-object v0, p0, Lcom/glympse/android/lib/jq;->he:Ljava/lang/String;
const-string v1, "dist"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_ae
iget-object v0, p0, Lcom/glympse/android/lib/jq;->uj:Lcom/glympse/android/lib/fu;
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getDouble()D
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/glympse/android/lib/fu;->b(D)V
goto/16 :goto_4
:cond_ae
iget-object v0, p0, Lcom/glympse/android/lib/jq;->he:Ljava/lang/String;
const-string v1, "accuracy"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_c3
iget-object v0, p0, Lcom/glympse/android/lib/jq;->uj:Lcom/glympse/android/lib/fu;
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getDouble()D
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/glympse/android/lib/fu;->c(D)V
goto/16 :goto_4
:cond_c3
iget-object v0, p0, Lcom/glympse/android/lib/jq;->he:Ljava/lang/String;
const-string v1, "activity"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_d9
iget-object v0, p0, Lcom/glympse/android/lib/jq;->uj:Lcom/glympse/android/lib/fu;
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v1
long-to-int v1, v1
invoke-virtual {v0, v1}, Lcom/glympse/android/lib/fu;->q(I)V
goto/16 :goto_4
:cond_d9
iget-object v0, p0, Lcom/glympse/android/lib/jq;->he:Ljava/lang/String;
const-string v1, "pause"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_ee
iget-object v0, p0, Lcom/glympse/android/lib/jq;->uj:Lcom/glympse/android/lib/fu;
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getBool()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/glympse/android/lib/fu;->l(Z)V
goto/16 :goto_4
:cond_ee
iget-object v0, p0, Lcom/glympse/android/lib/jq;->he:Ljava/lang/String;
const-string v1, "enable"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_104
iget-object v0, p0, Lcom/glympse/android/lib/jq;->uj:Lcom/glympse/android/lib/fu;
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v1
long-to-int v1, v1
invoke-virtual {v0, v1}, Lcom/glympse/android/lib/fu;->setMode(I)V
goto/16 :goto_4
:cond_104
iget-object v0, p0, Lcom/glympse/android/lib/jq;->he:Ljava/lang/String;
const-string v1, "source"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_11a
iget-object v0, p0, Lcom/glympse/android/lib/jq;->uj:Lcom/glympse/android/lib/fu;
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v1
long-to-int v1, v1
invoke-virtual {v0, v1}, Lcom/glympse/android/lib/fu;->setSource(I)V
goto/16 :goto_4
:cond_11a
iget-object v0, p0, Lcom/glympse/android/lib/jq;->he:Ljava/lang/String;
const-string v1, "freq"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4
iget-object v0, p0, Lcom/glympse/android/lib/jq;->uj:Lcom/glympse/android/lib/fu;
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v1
long-to-int v1, v1
invoke-virtual {v0, v1}, Lcom/glympse/android/lib/fu;->p(I)V
goto/16 :goto_4
:pswitch_130
iget-object v0, p0, Lcom/glympse/android/lib/jq;->he:Ljava/lang/String;
const-string v1, "id"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_149
invoke-virtual {p2, v3}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/jq;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-static {v0}, Lcom/glympse/android/lib/TicketCode;->cleanupInviteCode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GInvitePrivate;->setCode(Ljava/lang/String;)V
goto/16 :goto_4
:cond_149
iget-object v0, p0, Lcom/glympse/android/lib/jq;->he:Ljava/lang/String;
const-string v1, "ticket_id"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_15e
iget-object v0, p0, Lcom/glympse/android/lib/jq;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-virtual {p2, v3}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GInvitePrivate;->setTicketId(Ljava/lang/String;)V
goto/16 :goto_4
:cond_15e
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getType()I
move-result v0
const/4 v1, 0x2
if-ne v0, v1, :cond_4
iget-object v0, p0, Lcom/glympse/android/lib/jq;->he:Ljava/lang/String;
const-string v1, "viewers"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_17b
iget-object v0, p0, Lcom/glympse/android/lib/jq;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v1
long-to-int v1, v1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GInvitePrivate;->setViewers(I)V
goto/16 :goto_4
:cond_17b
iget-object v0, p0, Lcom/glympse/android/lib/jq;->he:Ljava/lang/String;
const-string v1, "viewing"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_191
iget-object v0, p0, Lcom/glympse/android/lib/jq;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v1
long-to-int v1, v1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GInvitePrivate;->setViewing(I)V
goto/16 :goto_4
:cond_191
iget-object v0, p0, Lcom/glympse/android/lib/jq;->he:Ljava/lang/String;
const-string v1, "last_view"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4
iget-object v0, p0, Lcom/glympse/android/lib/jq;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v1
invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GInvitePrivate;->setLastViewTime(J)V
goto/16 :goto_4
:pswitch_data_1a6
.packed-switch 0x1
:pswitch_5
:pswitch_16
:pswitch_7c
:pswitch_130
.end packed-switch
.end method
.method public startObject(I)Z
.registers 3
const/4 v0, 0x4
if-ne p1, v0, :cond_a
new-instance v0, Lcom/glympse/android/lib/ej;
invoke-direct {v0}, Lcom/glympse/android/lib/ej;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/jq;->oi:Lcom/glympse/android/lib/GInvitePrivate;
:cond_a
const/4 v0, 0x1
return v0
.end method
.method public startPair(ILjava/lang/String;)Z
.registers 5
iput-object p2, p0, Lcom/glympse/android/lib/jq;->he:Ljava/lang/String;
const/4 v0, 0x2
if-ne v0, p1, :cond_16
iget-object v0, p0, Lcom/glympse/android/lib/jq;->he:Ljava/lang/String;
const-string v1, "loc_profile"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_16
new-instance v0, Lcom/glympse/android/lib/fu;
invoke-direct {v0}, Lcom/glympse/android/lib/fu;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/jq;->uj:Lcom/glympse/android/lib/fu;
:cond_16
const/4 v0, 0x1
return v0
.end method