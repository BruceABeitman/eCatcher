.class  Lcom/glympse/android/lib/io;
.super Lcom/glympse/android/lib/ev;
.source "TicketParsers.java"
.field private oh:Lcom/glympse/android/lib/GTicketPrivate;
.method public constructor <init>(Lcom/glympse/android/lib/json/GJsonHandlerStack;Lcom/glympse/android/lib/GTicketPrivate;)V
.registers 3
invoke-direct {p0}, Lcom/glympse/android/lib/ev;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/io;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
iput-object p2, p0, Lcom/glympse/android/lib/io;->oh:Lcom/glympse/android/lib/GTicketPrivate;
return-void
.end method
.method public f(Lcom/glympse/android/core/GPrimitive;)V
.registers 8
if-nez p1, :cond_3
:goto_2
:cond_2
return-void
:cond_3
iget-object v0, p0, Lcom/glympse/android/lib/io;->oh:Lcom/glympse/android/lib/GTicketPrivate;
iget-wide v1, p0, Lcom/glympse/android/lib/io;->jA:J
iget-object v3, p0, Lcom/glympse/android/lib/io;->oV:Ljava/lang/String;
invoke-interface {v0, v1, v2, v3, p1}, Lcom/glympse/android/lib/GTicketPrivate;->setProperty(JLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
const-wide/16 v0, 0x0
iget-wide v2, p0, Lcom/glympse/android/lib/io;->jA:J
cmp-long v0, v0, v2
if-nez v0, :cond_2
iget-object v0, p0, Lcom/glympse/android/lib/io;->oV:Ljava/lang/String;
const-string v1, "message"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_28
iget-object v0, p0, Lcom/glympse/android/lib/io;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {p1}, Lcom/glympse/android/core/GPrimitive;->getString()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GTicketPrivate;->setMessage(Ljava/lang/String;)V
goto :goto_2
:cond_28
iget-object v0, p0, Lcom/glympse/android/lib/io;->oV:Ljava/lang/String;
const-string v1, "destination"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5b
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
iget-object v1, p0, Lcom/glympse/android/lib/io;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GTicketPrivate;->setDestination(Lcom/glympse/android/api/GPlace;)V
goto :goto_2
:cond_5b
iget-object v0, p0, Lcom/glympse/android/lib/io;->oV:Ljava/lang/String;
const-string v1, "app"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_8f
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
iget-object v3, p0, Lcom/glympse/android/lib/io;->oh:Lcom/glympse/android/lib/GTicketPrivate;
new-instance v4, Lcom/glympse/android/lib/o;
invoke-direct {v4, v0, v1, v2}, Lcom/glympse/android/lib/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v3, v4}, Lcom/glympse/android/lib/GTicketPrivate;->setOwner(Lcom/glympse/android/api/GAppProfile;)V
goto/16 :goto_2
:cond_8f
iget-object v0, p0, Lcom/glympse/android/lib/io;->oV:Ljava/lang/String;
const-string v1, "travel_mode"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_bd
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
iget-object v2, p0, Lcom/glympse/android/lib/io;->oh:Lcom/glympse/android/lib/GTicketPrivate;
new-instance v3, Lcom/glympse/android/lib/ix;
invoke-direct {v3, v0, v1}, Lcom/glympse/android/lib/ix;-><init>(ILcom/glympse/android/core/GPrimitive;)V
invoke-interface {v2, v3}, Lcom/glympse/android/lib/GTicketPrivate;->setTravelMode(Lcom/glympse/android/api/GTravelMode;)V
goto/16 :goto_2
:cond_bd
iget-object v0, p0, Lcom/glympse/android/lib/io;->oV:Ljava/lang/String;
const-string v1, "completed"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_ce
iget-object v0, p0, Lcom/glympse/android/lib/io;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->setCompleted()V
goto/16 :goto_2
:cond_ce
iget-object v0, p0, Lcom/glympse/android/lib/io;->oV:Ljava/lang/String;
const-string v1, "visibility"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2
iget-object v0, p0, Lcom/glympse/android/lib/io;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->visibilityChanged()V
goto/16 :goto_2
.end method