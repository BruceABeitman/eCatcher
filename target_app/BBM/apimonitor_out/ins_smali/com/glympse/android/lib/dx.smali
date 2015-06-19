.class  Lcom/glympse/android/lib/dx;
.super Ljava/lang/Object;
.source "HistoryStorage.java"
.implements Lcom/glympse/android/core/GCommon;
.field  _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field private jO:Lcom/glympse/android/lib/hw;
.field private lu:Lcom/glympse/android/lib/GCorrectedTime;
.field private nd:Z
.field public nk:J
.field public nt:J
.field private nu:J
.field private nv:J
.field public nw:J
.field public nx:Lcom/glympse/android/hal/GVector;
.method public constructor <init>()V
.registers 4
const-wide/16 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/lib/dx;->nd:Z
iput-wide v1, p0, Lcom/glympse/android/lib/dx;->nw:J
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/dx;->nx:Lcom/glympse/android/hal/GVector;
iput-wide v1, p0, Lcom/glympse/android/lib/dx;->nk:J
iput-wide v1, p0, Lcom/glympse/android/lib/dx;->nu:J
iput-wide v1, p0, Lcom/glympse/android/lib/dx;->nv:J
return-void
.end method
.method public static b(Lcom/glympse/android/hal/GDirectory;Ljava/lang/String;)V
.registers 3
const-string v0, "history_v2"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {p1, v0}, Lcom/glympse/android/lib/hw;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p0, v0}, Lcom/glympse/android/hal/GDirectory;->deleteFile(Ljava/lang/String;)Z
return-void
.end method
.method private bW()V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/dx;->lu:Lcom/glympse/android/lib/GCorrectedTime;
invoke-interface {v0}, Lcom/glympse/android/lib/GCorrectedTime;->getTime()J
move-result-wide v0
iget-wide v2, p0, Lcom/glympse/android/lib/dx;->nt:J
sub-long v2, v0, v2
iput-wide v2, p0, Lcom/glympse/android/lib/dx;->nu:J
const-wide/32 v2, 0xdbba00
sub-long/2addr v0, v2
iput-wide v0, p0, Lcom/glympse/android/lib/dx;->nv:J
return-void
.end method
.method private bd()V
.registers 9
const/4 v1, 0x0
iget-object v0, p0, Lcom/glympse/android/lib/dx;->jO:Lcom/glympse/android/lib/hw;
invoke-virtual {v0}, Lcom/glympse/android/lib/hw;->load()Lcom/glympse/android/core/GPrimitive;
move-result-object v0
if-nez v0, :cond_a
:cond_9
return-void
:cond_a
invoke-direct {p0}, Lcom/glympse/android/lib/dx;->bW()V
const-string v2, "locExpTs"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v2}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J
move-result-wide v2
iput-wide v2, p0, Lcom/glympse/android/lib/dx;->nw:J
iget-object v2, p0, Lcom/glympse/android/lib/dx;->nx:Lcom/glympse/android/hal/GVector;
invoke-virtual {v2}, Lcom/glympse/android/hal/GVector;->removeAllElements()V
const-string v2, "expired"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v2}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
if-eqz v2, :cond_9
invoke-interface {v2}, Lcom/glympse/android/core/GPrimitive;->size()I
move-result v3
move v0, v1
:goto_2f
if-ge v0, v3, :cond_9
invoke-interface {v2, v0}, Lcom/glympse/android/core/GPrimitive;->get(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v4
new-instance v5, Lcom/glympse/android/lib/hz;
invoke-direct {v5, v1}, Lcom/glympse/android/lib/hz;-><init>(Z)V
invoke-interface {v5, v4}, Lcom/glympse/android/lib/GTicketPrivate;->decode(Lcom/glympse/android/core/GPrimitive;)V
invoke-direct {p0, v5}, Lcom/glympse/android/lib/dx;->e(Lcom/glympse/android/api/GTicket;)Z
move-result v4
if-eqz v4, :cond_54
iget-object v4, p0, Lcom/glympse/android/lib/dx;->nx:Lcom/glympse/android/hal/GVector;
invoke-virtual {v4, v5}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
iget-wide v6, p0, Lcom/glympse/android/lib/dx;->nk:J
invoke-interface {v5}, Lcom/glympse/android/lib/GTicketPrivate;->getExpireTime()J
move-result-wide v4
invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J
move-result-wide v4
iput-wide v4, p0, Lcom/glympse/android/lib/dx;->nk:J
:cond_54
add-int/lit8 v0, v0, 0x1
goto :goto_2f
.end method
.method private d(Lcom/glympse/android/hal/GVector;)V
.registers 15
const/4 v10, 0x2
const/4 v4, 0x0
iget-boolean v0, p0, Lcom/glympse/android/lib/dx;->nd:Z
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
invoke-direct {p0}, Lcom/glympse/android/lib/dx;->bW()V
const-wide/16 v0, 0x0
new-instance v5, Lcom/glympse/android/lib/Primitive;
invoke-direct {v5, v10}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
invoke-virtual {p1}, Lcom/glympse/android/hal/GVector;->length()I
move-result v6
if-lez v6, :cond_4c
new-instance v7, Lcom/glympse/android/lib/Primitive;
const/4 v2, 0x1
invoke-direct {v7, v2}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
move v3, v4
move-wide v11, v0
move-wide v1, v11
:goto_20
if-ge v3, v6, :cond_42
invoke-virtual {p1, v3}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
new-instance v8, Lcom/glympse/android/lib/Primitive;
invoke-direct {v8, v10}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
invoke-interface {v0, v8, v4}, Lcom/glympse/android/lib/GTicketPrivate;->encode(Lcom/glympse/android/core/GPrimitive;I)V
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->isActive()Z
move-result v8
if-eqz v8, :cond_42
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getExpireTime()J
move-result-wide v8
invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->max(JJ)J
move-result-wide v1
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_20
:cond_42
const-string v0, "expired"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v5, v0, v7}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
move-wide v0, v1
:cond_4c
const-string v2, "locExpTs"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v5, v2, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V
iget-object v0, p0, Lcom/glympse/android/lib/dx;->jO:Lcom/glympse/android/lib/hw;
invoke-virtual {v0, v5}, Lcom/glympse/android/lib/hw;->save(Lcom/glympse/android/core/GPrimitive;)V
goto :goto_6
.end method
.method private e(Lcom/glympse/android/api/GTicket;)Z
.registers 6
invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->getExpireTime()J
move-result-wide v0
invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->isCompleted()Z
move-result v2
if-eqz v2, :cond_18
iget-wide v2, p0, Lcom/glympse/android/lib/dx;->nu:J
cmp-long v2, v2, v0
if-gtz v2, :cond_18
iget-wide v2, p0, Lcom/glympse/android/lib/dx;->nv:J
cmp-long v0, v0, v2
if-gtz v0, :cond_18
const/4 v0, 0x1
:goto_17
return v0
:cond_18
const/4 v0, 0x0
goto :goto_17
.end method
.method public a(ZLcom/glympse/android/hal/GVector;)V
.registers 3
if-nez p1, :cond_5
invoke-direct {p0, p2}, Lcom/glympse/android/lib/dx;->d(Lcom/glympse/android/hal/GVector;)V
:cond_5
return-void
.end method
.method public b(Lcom/glympse/android/hal/GVector;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0, p1}, Lcom/glympse/android/lib/dx;->d(Lcom/glympse/android/hal/GVector;)V
iget-object v0, p0, Lcom/glympse/android/lib/dx;->jO:Lcom/glympse/android/lib/hw;
invoke-virtual {v0}, Lcom/glympse/android/lib/hw;->stop()V
iput-object v1, p0, Lcom/glympse/android/lib/dx;->jO:Lcom/glympse/android/lib/hw;
iput-object v1, p0, Lcom/glympse/android/lib/dx;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
return-void
.end method
.method public c(Lcom/glympse/android/hal/GVector;)V
.registers 11
const/4 v2, 0x0
invoke-virtual {p1}, Lcom/glympse/android/hal/GVector;->size()I
move-result v4
move v3, v2
:goto_6
if-ge v3, v4, :cond_42
invoke-virtual {p1, v3}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->isActive()Z
move-result v1
if-eqz v1, :cond_42
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getInvites()Lcom/glympse/android/core/GArray;
move-result-object v5
invoke-interface {v5}, Lcom/glympse/android/core/GArray;->length()I
move-result v6
move v1, v2
:goto_1d
if-ge v1, v6, :cond_3e
invoke-interface {v5, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GInvitePrivate;
const/4 v7, 0x2
invoke-interface {v0}, Lcom/glympse/android/lib/GInvitePrivate;->getState()I
move-result v8
if-ne v7, v8, :cond_3a
const/16 v7, 0x8
invoke-interface {v0, v7}, Lcom/glympse/android/lib/GInvitePrivate;->setState(I)V
iget-object v7, p0, Lcom/glympse/android/lib/dx;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v7}, Lcom/glympse/android/lib/GGlympsePrivate;->getTicketProtocol()Lcom/glympse/android/lib/GTicketProtocol;
move-result-object v7
invoke-interface {v7, v0}, Lcom/glympse/android/lib/GTicketProtocol;->updateInvite(Lcom/glympse/android/api/GInvite;)V
:cond_3a
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_1d
:cond_3e
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_6
:cond_42
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/glympse/android/lib/dx;->nw:J
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/glympse/android/lib/dx;->nd:Z
return-void
.end method
.method public start(Lcom/glympse/android/lib/GGlympsePrivate;)V
.registers 6
iput-object p1, p0, Lcom/glympse/android/lib/dx;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {p1}, Lcom/glympse/android/lib/GGlympsePrivate;->getCorrectedTime()Lcom/glympse/android/lib/GCorrectedTime;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/dx;->lu:Lcom/glympse/android/lib/GCorrectedTime;
invoke-interface {p1}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryLookback()J
move-result-wide v0
const-wide/16 v2, -0x1
cmp-long v2, v2, v0
if-nez v2, :cond_17
const-wide v0, 0x9a7ec800L
:cond_17
iput-wide v0, p0, Lcom/glympse/android/lib/dx;->nt:J
new-instance v0, Lcom/glympse/android/lib/hw;
invoke-direct {v0}, Lcom/glympse/android/lib/hw;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/dx;->jO:Lcom/glympse/android/lib/hw;
iget-object v0, p0, Lcom/glympse/android/lib/dx;->jO:Lcom/glympse/android/lib/hw;
const/4 v1, 0x0
const-string v2, "history_v2"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, p1, v1, v2}, Lcom/glympse/android/lib/hw;->a(Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/glympse/android/lib/dx;->bd()V
return-void
.end method