.class public Lcom/glympse/android/lib/ip;
.super Lcom/glympse/android/lib/k;
.source "TicketParsers.java"
.field private mp:Lcom/glympse/android/hal/GVector;
.field public nh:J
.field public oh:Lcom/glympse/android/lib/GTicketPrivate;
.method public constructor <init>(Lcom/glympse/android/lib/json/GJsonHandlerStack;)V
.registers 4
invoke-direct {p0}, Lcom/glympse/android/lib/k;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/ip;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
new-instance v0, Lcom/glympse/android/lib/hz;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/glympse/android/lib/hz;-><init>(Z)V
iput-object v0, p0, Lcom/glympse/android/lib/ip;->oh:Lcom/glympse/android/lib/GTicketPrivate;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/glympse/android/lib/ip;->nh:J
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/ip;->mp:Lcom/glympse/android/hal/GVector;
return-void
.end method
.method public endObject(I)Z
.registers 10
const/4 v7, 0x1
if-ne v7, p1, :cond_3c
iget-object v0, p0, Lcom/glympse/android/lib/ip;->mp:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v2
const/4 v0, 0x0
move v1, v0
:goto_b
if-ge v1, v2, :cond_37
iget-object v0, p0, Lcom/glympse/android/lib/ip;->mp:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GInvitePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GInvitePrivate;->getLastViewTime()J
move-result-wide v3
iget-wide v5, p0, Lcom/glympse/android/lib/ip;->nh:J
cmp-long v5, v3, v5
if-lez v5, :cond_2a
iput-wide v3, p0, Lcom/glympse/android/lib/ip;->nh:J
:goto_21
:cond_21
iget-object v3, p0, Lcom/glympse/android/lib/ip;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v3, v0}, Lcom/glympse/android/lib/GTicketPrivate;->addInviteCore(Lcom/glympse/android/api/GInvite;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_b
:cond_2a
invoke-interface {v0}, Lcom/glympse/android/lib/GInvitePrivate;->getCreatedTime()J
move-result-wide v3
iget-wide v5, p0, Lcom/glympse/android/lib/ip;->nh:J
cmp-long v5, v3, v5
if-lez v5, :cond_21
iput-wide v3, p0, Lcom/glympse/android/lib/ip;->nh:J
goto :goto_21
:cond_37
iget-object v0, p0, Lcom/glympse/android/lib/ip;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
invoke-interface {v0}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->popHandler()V
:cond_3c
return v7
.end method
.method public bridge synthetic endPair(I)Z
.registers 3
invoke-super {p0, p1}, Lcom/glympse/android/lib/k;->endPair(I)Z
move-result v0
return v0
.end method
.method public primitive(ILcom/glympse/android/lib/json/GJsonPrimitive;)Z
.registers 7
const/4 v1, 0x1
if-ne v1, p1, :cond_16
iget-object v0, p0, Lcom/glympse/android/lib/ip;->he:Ljava/lang/String;
const-string v2, "id"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/glympse/android/lib/ip;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-virtual {p2, v1}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v2}, Lcom/glympse/android/lib/GTicketPrivate;->setId(Ljava/lang/String;)V
:cond_16
:goto_16
return v1
:cond_17
iget-object v0, p0, Lcom/glympse/android/lib/ip;->he:Ljava/lang/String;
const-string v2, "sibling"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_30
iget-object v2, p0, Lcom/glympse/android/lib/ip;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getBool()Z
move-result v0
if-nez v0, :cond_2e
move v0, v1
:goto_2a
invoke-interface {v2, v0}, Lcom/glympse/android/lib/GTicketPrivate;->setMine(Z)V
goto :goto_16
:cond_2e
const/4 v0, 0x0
goto :goto_2a
:cond_30
iget-object v0, p0, Lcom/glympse/android/lib/ip;->he:Ljava/lang/String;
const-string v2, "start_time"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_44
iget-object v0, p0, Lcom/glympse/android/lib/ip;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v2
invoke-interface {v0, v2, v3}, Lcom/glympse/android/lib/GTicketPrivate;->setStartTime(J)V
goto :goto_16
:cond_44
iget-object v0, p0, Lcom/glympse/android/lib/ip;->he:Ljava/lang/String;
const-string v2, "end_time"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/glympse/android/lib/ip;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v2
invoke-interface {v0, v2, v3, v1}, Lcom/glympse/android/lib/GTicketPrivate;->setExpireTime(JZ)V
goto :goto_16
.end method
.method public startPair(ILjava/lang/String;)Z
.registers 9
const/4 v5, 0x1
const/4 v4, 0x0
iput-object p2, p0, Lcom/glympse/android/lib/ip;->he:Ljava/lang/String;
if-ne v5, p1, :cond_1e
iget-object v0, p0, Lcom/glympse/android/lib/ip;->he:Ljava/lang/String;
const-string v1, "properties"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/glympse/android/lib/ip;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
new-instance v1, Lcom/glympse/android/lib/io;
iget-object v2, p0, Lcom/glympse/android/lib/ip;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
iget-object v3, p0, Lcom/glympse/android/lib/ip;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-direct {v1, v2, v3}, Lcom/glympse/android/lib/io;-><init>(Lcom/glympse/android/lib/json/GJsonHandlerStack;Lcom/glympse/android/lib/GTicketPrivate;)V
invoke-interface {v0, v1, v4}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->pushHandler(Lcom/glympse/android/lib/json/GJsonHandler;I)V
:goto_1e
:cond_1e
return v5
:cond_1f
iget-object v0, p0, Lcom/glympse/android/lib/ip;->he:Ljava/lang/String;
const-string v1, "invites"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/glympse/android/lib/ip;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
new-instance v1, Lcom/glympse/android/lib/in;
iget-object v2, p0, Lcom/glympse/android/lib/ip;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
iget-object v3, p0, Lcom/glympse/android/lib/ip;->mp:Lcom/glympse/android/hal/GVector;
invoke-direct {v1, v2, v3}, Lcom/glympse/android/lib/in;-><init>(Lcom/glympse/android/lib/json/GJsonHandlerStack;Lcom/glympse/android/hal/GVector;)V
invoke-interface {v0, v1, v4}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->pushHandler(Lcom/glympse/android/lib/json/GJsonHandler;I)V
goto :goto_1e
.end method