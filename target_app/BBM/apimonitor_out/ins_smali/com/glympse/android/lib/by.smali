.class  Lcom/glympse/android/lib/by;
.super Ljava/lang/Object;
.source "GeoTrigger.java"
.implements Lcom/glympse/android/api/GGeoTrigger;
.field private _name:Ljava/lang/String;
.field private _type:I
.field private cN:Lcom/glympse/android/core/GRegion;
.field private hm:Ljava/lang/String;
.field private jy:Lcom/glympse/android/api/GTicket;
.field private kN:Lcom/glympse/android/api/GTimeConstraint;
.field private kO:Z
.field private kP:I
.method public constructor <init>()V
.registers 2
const/4 v0, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v0, p0, Lcom/glympse/android/lib/by;->_type:I
iput-boolean v0, p0, Lcom/glympse/android/lib/by;->kO:Z
const/4 v0, 0x2
iput v0, p0, Lcom/glympse/android/lib/by;->kP:I
return-void
.end method
.method public constructor <init>(Ljava/lang/String;ZLcom/glympse/android/api/GTicket;Lcom/glympse/android/core/GLatLng;DI)V
.registers 15
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Lcom/glympse/android/hal/Platform;->generateDeviceId()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/by;->hm:Ljava/lang/String;
iput-object p1, p0, Lcom/glympse/android/lib/by;->_name:Ljava/lang/String;
const/4 v0, 0x1
iput v0, p0, Lcom/glympse/android/lib/by;->_type:I
iput-boolean p2, p0, Lcom/glympse/android/lib/by;->kO:Z
iput-object p3, p0, Lcom/glympse/android/lib/by;->jy:Lcom/glympse/android/api/GTicket;
invoke-interface {p4}, Lcom/glympse/android/core/GLatLng;->getLatitude()D
move-result-wide v0
invoke-interface {p4}, Lcom/glympse/android/core/GLatLng;->getLongitude()D
move-result-wide v2
iget-object v6, p0, Lcom/glympse/android/lib/by;->hm:Ljava/lang/String;
move-wide v4, p5
invoke-static/range {v0 .. v6}, Lcom/glympse/android/core/CoreFactory;->createRegion(DDDLjava/lang/String;)Lcom/glympse/android/core/GRegion;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/by;->cN:Lcom/glympse/android/core/GRegion;
iput p7, p0, Lcom/glympse/android/lib/by;->kP:I
return-void
.end method
.method public autoSend()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/by;->kO:Z
return v0
.end method
.method public decode(Lcom/glympse/android/core/GPrimitive;)V
.registers 10
const/4 v6, 0x0
const-wide/high16 v0, 0x7ff8
const-string v2, "type"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {p1, v2}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J
move-result-wide v2
long-to-int v2, v2
iput v2, p0, Lcom/glympse/android/lib/by;->_type:I
const-string v2, "asnd"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {p1, v2}, Lcom/glympse/android/core/GPrimitive;->getBool(Ljava/lang/String;)Z
move-result v2
iput-boolean v2, p0, Lcom/glympse/android/lib/by;->kO:Z
const-string v2, "id"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {p1, v2}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/glympse/android/lib/by;->hm:Ljava/lang/String;
const-string v2, "name"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {p1, v2}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/glympse/android/lib/by;->_name:Ljava/lang/String;
const-string v2, "tmc"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {p1, v2}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
const-string v2, "tckt"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {p1, v2}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v3
if-eqz v3, :cond_55
const/4 v2, 0x0
invoke-static {v2, v6, v6}, Lcom/glympse/android/api/GlympseFactory;->createTicket(ILjava/lang/String;Lcom/glympse/android/api/GPlace;)Lcom/glympse/android/api/GTicket;
move-result-object v2
check-cast v2, Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v2, v3}, Lcom/glympse/android/lib/GTicketPrivate;->decode(Lcom/glympse/android/core/GPrimitive;)V
iput-object v2, p0, Lcom/glympse/android/lib/by;->jy:Lcom/glympse/android/api/GTicket;
:cond_55
const-string v2, "rgn"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {p1, v2}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v7
if-eqz v7, :cond_6e
move-wide v2, v0
move-wide v4, v0
invoke-static/range {v0 .. v6}, Lcom/glympse/android/core/CoreFactory;->createRegion(DDDLjava/lang/String;)Lcom/glympse/android/core/GRegion;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/by;->cN:Lcom/glympse/android/core/GRegion;
iget-object v0, p0, Lcom/glympse/android/lib/by;->cN:Lcom/glympse/android/core/GRegion;
invoke-interface {v0, v7}, Lcom/glympse/android/core/GRegion;->decode(Lcom/glympse/android/core/GPrimitive;)V
:cond_6e
const-string v0, "trns"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J
move-result-wide v0
long-to-int v0, v0
iput v0, p0, Lcom/glympse/android/lib/by;->kP:I
return-void
.end method
.method public encode(Lcom/glympse/android/core/GPrimitive;I)V
.registers 7
const/4 v3, 0x2
const-string v0, "type"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget v1, p0, Lcom/glympse/android/lib/by;->_type:I
int-to-long v1, v1
invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V
const-string v0, "asnd"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-boolean v1, p0, Lcom/glympse/android/lib/by;->kO:Z
invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Z)V
iget-object v0, p0, Lcom/glympse/android/lib/by;->hm:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_2b
const-string v0, "id"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/by;->hm:Ljava/lang/String;
invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_2b
iget-object v0, p0, Lcom/glympse/android/lib/by;->_name:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_3e
const-string v0, "name"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/by;->_name:Ljava/lang/String;
invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_3e
iget-object v0, p0, Lcom/glympse/android/lib/by;->kN:Lcom/glympse/android/api/GTimeConstraint;
if-eqz v0, :cond_54
invoke-static {v3}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/by;->kN:Lcom/glympse/android/api/GTimeConstraint;
invoke-interface {v1, v0, p2}, Lcom/glympse/android/api/GTimeConstraint;->encode(Lcom/glympse/android/core/GPrimitive;I)V
const-string v1, "tmc"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
:cond_54
iget-object v0, p0, Lcom/glympse/android/lib/by;->jy:Lcom/glympse/android/api/GTicket;
if-eqz v0, :cond_6c
iget-object v0, p0, Lcom/glympse/android/lib/by;->jy:Lcom/glympse/android/api/GTicket;
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
invoke-static {v3}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
invoke-interface {v0, v1, p2}, Lcom/glympse/android/lib/GTicketPrivate;->encode(Lcom/glympse/android/core/GPrimitive;I)V
const-string v0, "tckt"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
:cond_6c
iget-object v0, p0, Lcom/glympse/android/lib/by;->cN:Lcom/glympse/android/core/GRegion;
if-eqz v0, :cond_82
invoke-static {v3}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/by;->cN:Lcom/glympse/android/core/GRegion;
invoke-interface {v1, v0, p2}, Lcom/glympse/android/core/GRegion;->encode(Lcom/glympse/android/core/GPrimitive;I)V
const-string v1, "rgn"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
:cond_82
const-string v0, "trns"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget v1, p0, Lcom/glympse/android/lib/by;->kP:I
int-to-long v1, v1
invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V
return-void
.end method
.method public getId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/by;->hm:Ljava/lang/String;
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/by;->_name:Ljava/lang/String;
return-object v0
.end method
.method public getRegion()Lcom/glympse/android/core/GRegion;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/by;->cN:Lcom/glympse/android/core/GRegion;
return-object v0
.end method
.method public getTicket()Lcom/glympse/android/api/GTicket;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/by;->jy:Lcom/glympse/android/api/GTicket;
return-object v0
.end method
.method public getTimeConstraint()Lcom/glympse/android/api/GTimeConstraint;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/by;->kN:Lcom/glympse/android/api/GTimeConstraint;
return-object v0
.end method
.method public getTransition()I
.registers 2
iget v0, p0, Lcom/glympse/android/lib/by;->kP:I
return v0
.end method
.method public getType()I
.registers 2
iget v0, p0, Lcom/glympse/android/lib/by;->_type:I
return v0
.end method