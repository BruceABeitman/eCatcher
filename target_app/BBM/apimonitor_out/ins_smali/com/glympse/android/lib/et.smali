.class  Lcom/glympse/android/lib/et;
.super Lcom/glympse/android/lib/json/JsonHandlerBasic;
.source "InviteTicketParser.java"
.field private hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
.field private he:Ljava/lang/String;
.field private mQ:I
.field private oO:Lcom/glympse/android/lib/es;
.field private oP:Z
.field private oi:Lcom/glympse/android/lib/GInvitePrivate;
.method public constructor <init>(Lcom/glympse/android/lib/json/GJsonHandlerStack;ILcom/glympse/android/lib/es;)V
.registers 4
invoke-direct {p0}, Lcom/glympse/android/lib/json/JsonHandlerBasic;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/et;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
iput p2, p0, Lcom/glympse/android/lib/et;->mQ:I
iput-object p3, p0, Lcom/glympse/android/lib/et;->oO:Lcom/glympse/android/lib/es;
return-void
.end method
.method public endArray(I)Z
.registers 3
iget v0, p0, Lcom/glympse/android/lib/et;->mQ:I
if-ne v0, p1, :cond_9
iget-object v0, p0, Lcom/glympse/android/lib/et;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
invoke-interface {v0}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->popHandler()V
:cond_9
const/4 v0, 0x1
return v0
.end method
.method public endObject(I)Z
.registers 4
const/4 v0, 0x4
if-ne v0, p1, :cond_13
iget-boolean v0, p0, Lcom/glympse/android/lib/et;->oP:Z
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/glympse/android/lib/et;->oO:Lcom/glympse/android/lib/es;
iget-object v0, v0, Lcom/glympse/android/lib/es;->oE:Lcom/glympse/android/lib/GTicketPrivate;
iget-object v1, p0, Lcom/glympse/android/lib/et;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GTicketPrivate;->addInviteCore(Lcom/glympse/android/api/GInvite;)V
:goto_10
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/et;->oi:Lcom/glympse/android/lib/GInvitePrivate;
:cond_13
const/4 v0, 0x1
return v0
:cond_15
iget-object v0, p0, Lcom/glympse/android/lib/et;->oO:Lcom/glympse/android/lib/es;
iget-object v0, v0, Lcom/glympse/android/lib/es;->oN:Lcom/glympse/android/hal/GVector;
iget-object v1, p0, Lcom/glympse/android/lib/et;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
goto :goto_10
.end method
.method public primitive(ILcom/glympse/android/lib/json/GJsonPrimitive;)Z
.registers 7
const/4 v3, 0x1
const/4 v2, 0x0
const/4 v0, 0x4
if-ne v0, p1, :cond_1c
iget-object v0, p0, Lcom/glympse/android/lib/et;->he:Ljava/lang/String;
const-string v1, "id"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1d
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v0
iget-object v2, p0, Lcom/glympse/android/lib/et;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-static {v0, v1}, Lcom/glympse/android/hal/Helpers;->toString(J)Ljava/lang/String;
move-result-object v0
invoke-interface {v2, v0}, Lcom/glympse/android/lib/GInvitePrivate;->setCode(Ljava/lang/String;)V
:goto_1c
:cond_1c
return v3
:cond_1d
iget-object v0, p0, Lcom/glympse/android/lib/et;->he:Ljava/lang/String;
const-string v1, "type"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_37
invoke-virtual {p2, v3}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getString(Z)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/et;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-static {v0}, Lcom/glympse/android/lib/ej;->t(Ljava/lang/String;)I
move-result v0
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GInvitePrivate;->setType(I)V
iput-boolean v3, p0, Lcom/glympse/android/lib/et;->oP:Z
goto :goto_1c
:cond_37
iget-object v0, p0, Lcom/glympse/android/lib/et;->he:Ljava/lang/String;
const-string v1, "subtype"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4b
iget-object v0, p0, Lcom/glympse/android/lib/et;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GInvitePrivate;->setSubtype(Ljava/lang/String;)V
goto :goto_1c
:cond_4b
iget-object v0, p0, Lcom/glympse/android/lib/et;->he:Ljava/lang/String;
const-string v1, "name"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5f
iget-object v0, p0, Lcom/glympse/android/lib/et;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GInvitePrivate;->setName(Ljava/lang/String;)V
goto :goto_1c
:cond_5f
iget-object v0, p0, Lcom/glympse/android/lib/et;->he:Ljava/lang/String;
const-string v1, "address"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/glympse/android/lib/et;->oi:Lcom/glympse/android/lib/GInvitePrivate;
invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GInvitePrivate;->setAddress(Ljava/lang/String;)V
goto :goto_1c
.end method
.method public startObject(I)Z
.registers 3
const/4 v0, 0x4
if-ne p1, v0, :cond_d
new-instance v0, Lcom/glympse/android/lib/ej;
invoke-direct {v0}, Lcom/glympse/android/lib/ej;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/et;->oi:Lcom/glympse/android/lib/GInvitePrivate;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/lib/et;->oP:Z
:cond_d
const/4 v0, 0x1
return v0
.end method
.method public startPair(ILjava/lang/String;)Z
.registers 4
iput-object p2, p0, Lcom/glympse/android/lib/et;->he:Ljava/lang/String;
const/4 v0, 0x1
return v0
.end method