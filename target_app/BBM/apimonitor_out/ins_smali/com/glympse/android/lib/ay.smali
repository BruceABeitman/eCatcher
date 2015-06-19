.class  Lcom/glympse/android/lib/ay;
.super Ljava/lang/Object;
.source "DiagnosticsManager.java"
.implements Lcom/glympse/android/api/GEventListener;
.implements Lcom/glympse/android/lib/GBatchListener;
.implements Lcom/glympse/android/lib/GDiagnosticsManager;
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field private jO:Lcom/glympse/android/lib/hw;
.field private jP:Lcom/glympse/android/core/GPrimitive;
.field private jQ:Lcom/glympse/android/core/GPrimitive;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/glympse/android/lib/hw;
invoke-direct {v0}, Lcom/glympse/android/lib/hw;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/ay;->jO:Lcom/glympse/android/lib/hw;
return-void
.end method
.method private a(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/core/GPrimitive;)V
.registers 9
iget-object v0, p0, Lcom/glympse/android/lib/ay;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GHistoryManager;->isSynced()Z
move-result v0
if-nez v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->getId()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_c
invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->isMine()Z
move-result v0
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/glympse/android/lib/ay;->jP:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
if-nez v0, :cond_30
new-instance v0, Lcom/glympse/android/lib/Primitive;
const/4 v2, 0x1
invoke-direct {v0, v2}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
iget-object v2, p0, Lcom/glympse/android/lib/ay;->jP:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v2, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
:cond_30
iget-object v1, p0, Lcom/glympse/android/lib/ay;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J
move-result-wide v1
invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->getExpireTime()J
move-result-wide v3
invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J
move-result-wide v1
new-instance v3, Lcom/glympse/android/lib/Primitive;
const/4 v4, 0x2
invoke-direct {v3, v4}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
const-string v4, "t"
invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-interface {v3, v4, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V
const-string v1, "pid"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-wide/16 v4, 0x2a
invoke-interface {v3, v1, v4, v5}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V
const-string v1, "n"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "diag"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v3, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "v"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v3, v1, p2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
invoke-interface {v0, v3}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
invoke-direct {p0}, Lcom/glympse/android/lib/ay;->save()V
goto :goto_c
.end method
.method private aF()V
.registers 15
const/16 v13, 0x100
const/4 v12, 0x2
iget-object v0, p0, Lcom/glympse/android/lib/ay;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/lib/GServerPost;->getAuthState()I
move-result v0
const/4 v1, 0x3
if-ne v0, v1, :cond_34
iget-object v0, p0, Lcom/glympse/android/lib/ay;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GHistoryManager;->isSynced()Z
move-result v0
if-eqz v0, :cond_34
iget-object v0, p0, Lcom/glympse/android/lib/ay;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getNetworkManager()Lcom/glympse/android/api/GNetworkManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GNetworkManager;->isNetworkError()Z
move-result v0
if-nez v0, :cond_34
iget-object v0, p0, Lcom/glympse/android/lib/ay;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getBatteryManager()Lcom/glympse/android/api/GBatteryManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GBatteryManager;->isBatteryOk()Z
move-result v0
if-nez v0, :cond_35
:goto_34
:cond_34
return-void
:cond_35
iget-object v0, p0, Lcom/glympse/android/lib/ay;->jQ:Lcom/glympse/android/core/GPrimitive;
if-nez v0, :cond_34
iget-object v0, p0, Lcom/glympse/android/lib/ay;->jP:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->size()I
move-result v0
if-eqz v0, :cond_34
new-instance v0, Lcom/glympse/android/lib/Primitive;
invoke-direct {v0, v12}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
iput-object v0, p0, Lcom/glympse/android/lib/ay;->jQ:Lcom/glympse/android/core/GPrimitive;
new-instance v3, Lcom/glympse/android/hal/GVector;
iget-object v0, p0, Lcom/glympse/android/lib/ay;->jP:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->size()I
move-result v0
invoke-direct {v3, v0}, Lcom/glympse/android/hal/GVector;-><init>(I)V
iget-object v0, p0, Lcom/glympse/android/lib/ay;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J
move-result-wide v4
iget-object v0, p0, Lcom/glympse/android/lib/ay;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GConfig;->getInviteLifetime()J
move-result-wide v6
iget-object v0, p0, Lcom/glympse/android/lib/ay;->jP:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->getKeys()Ljava/util/Enumeration;
move-result-object v8
:cond_69
:goto_69
invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_d0
invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v1, p0, Lcom/glympse/android/lib/ay;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v1
invoke-interface {v1, v0}, Lcom/glympse/android/api/GHistoryManager;->findTicketByTicketId(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;
move-result-object v9
if-eqz v9, :cond_69
invoke-interface {v9}, Lcom/glympse/android/api/GTicket;->isMine()Z
move-result v1
if-eqz v1, :cond_69
invoke-interface {v9}, Lcom/glympse/android/api/GTicket;->getExpireTime()J
move-result-wide v1
add-long/2addr v1, v6
cmp-long v1, v4, v1
if-gtz v1, :cond_69
iget-object v1, p0, Lcom/glympse/android/lib/ay;->jP:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v1, v0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v10
invoke-interface {v10}, Lcom/glympse/android/core/GPrimitive;->size()I
move-result v2
if-le v2, v13, :cond_a7
const/4 v1, 0x1
:goto_9d
if-le v2, v13, :cond_a9
add-int/lit8 v11, v2, -0x1
invoke-interface {v10, v11}, Lcom/glympse/android/core/GPrimitive;->remove(I)V
add-int/lit8 v2, v2, -0x1
goto :goto_9d
:cond_a7
const/4 v1, 0x0
goto :goto_9d
:cond_a9
if-eqz v1, :cond_c0
const-string v1, "diagnostics"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "state"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v11, "truncated"
invoke-static {v11}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v11
invoke-virtual {p0, v9, v1, v2, v11}, Lcom/glympse/android/lib/ay;->logEvent(Lcom/glympse/android/api/GTicket;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:cond_c0
new-instance v1, Lcom/glympse/android/lib/ax;
iget-object v2, p0, Lcom/glympse/android/lib/ay;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {v1, v2, v0, v10}, Lcom/glympse/android/lib/ax;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
invoke-virtual {v3, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
iget-object v1, p0, Lcom/glympse/android/lib/ay;->jQ:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v1, v0, v10}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
goto :goto_69
:cond_d0
new-instance v0, Lcom/glympse/android/lib/Primitive;
invoke-direct {v0, v12}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
iput-object v0, p0, Lcom/glympse/android/lib/ay;->jP:Lcom/glympse/android/core/GPrimitive;
invoke-virtual {v3}, Lcom/glympse/android/hal/GVector;->size()I
move-result v0
if-lez v0, :cond_f5
iget-object v0, p0, Lcom/glympse/android/lib/ay;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getJobQueue()Lcom/glympse/android/lib/GJobQueue;
move-result-object v1
new-instance v2, Lcom/glympse/android/lib/az;
iget-object v4, p0, Lcom/glympse/android/lib/ay;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GBatchListener;
invoke-direct {v2, v4, v0, v3}, Lcom/glympse/android/lib/az;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GBatchListener;Lcom/glympse/android/hal/GVector;)V
invoke-interface {v1, v2}, Lcom/glympse/android/lib/GJobQueue;->addJob(Lcom/glympse/android/lib/GJob;)V
goto/16 :goto_34
:cond_f5
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/ay;->jQ:Lcom/glympse/android/core/GPrimitive;
goto/16 :goto_34
.end method
.method private aG()Lcom/glympse/android/core/GPrimitive;
.registers 8
iget-object v0, p0, Lcom/glympse/android/lib/ay;->jQ:Lcom/glympse/android/core/GPrimitive;
if-nez v0, :cond_7
iget-object v0, p0, Lcom/glympse/android/lib/ay;->jP:Lcom/glympse/android/core/GPrimitive;
:goto_6
return-object v0
:cond_7
new-instance v1, Lcom/glympse/android/lib/Primitive;
const/4 v0, 0x2
invoke-direct {v1, v0}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
iget-object v0, p0, Lcom/glympse/android/lib/ay;->jQ:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->getKeys()Ljava/util/Enumeration;
move-result-object v2
:goto_13
invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_29
invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v3, p0, Lcom/glympse/android/lib/ay;->jQ:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v3, v0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v3
invoke-interface {v1, v0, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
goto :goto_13
:cond_29
iget-object v0, p0, Lcom/glympse/android/lib/ay;->jP:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->getKeys()Ljava/util/Enumeration;
move-result-object v2
:goto_2f
:cond_2f
invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_5c
invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-interface {v1, v0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v3
iget-object v4, p0, Lcom/glympse/android/lib/ay;->jP:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v4, v0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v4
if-nez v3, :cond_4b
invoke-interface {v1, v0, v4}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
goto :goto_2f
:cond_4b
invoke-interface {v4}, Lcom/glympse/android/core/GPrimitive;->size()I
move-result v5
const/4 v0, 0x0
:goto_50
if-ge v0, v5, :cond_2f
invoke-interface {v4, v0}, Lcom/glympse/android/core/GPrimitive;->get(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v6
invoke-interface {v3, v6}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
add-int/lit8 v0, v0, 0x1
goto :goto_50
:cond_5c
move-object v0, v1
goto :goto_6
.end method
.method private b(Lcom/glympse/android/core/GPrimitive;)V
.registers 4
const/4 v1, 0x2
invoke-static {}, Lcom/glympse/android/lib/Debug;->getLevel()I
move-result v0
if-gt v0, v1, :cond_e
invoke-static {p1}, Lcom/glympse/android/lib/json/JsonSerializer;->toString(Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
:cond_e
return-void
.end method
.method private load()Lcom/glympse/android/core/GPrimitive;
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/ay;->jO:Lcom/glympse/android/lib/hw;
invoke-virtual {v0}, Lcom/glympse/android/lib/hw;->load()Lcom/glympse/android/core/GPrimitive;
move-result-object v0
if-nez v0, :cond_e
new-instance v0, Lcom/glympse/android/lib/Primitive;
const/4 v1, 0x2
invoke-direct {v0, v1}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
:cond_e
invoke-direct {p0, v0}, Lcom/glympse/android/lib/ay;->b(Lcom/glympse/android/core/GPrimitive;)V
return-object v0
.end method
.method private save()V
.registers 3
invoke-direct {p0}, Lcom/glympse/android/lib/ay;->aG()Lcom/glympse/android/core/GPrimitive;
move-result-object v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
invoke-direct {p0, v0}, Lcom/glympse/android/lib/ay;->b(Lcom/glympse/android/core/GPrimitive;)V
iget-object v1, p0, Lcom/glympse/android/lib/ay;->jO:Lcom/glympse/android/lib/hw;
invoke-virtual {v1, v0}, Lcom/glympse/android/lib/hw;->save(Lcom/glympse/android/core/GPrimitive;)V
goto :goto_6
.end method
.method public batchCompleted(Lcom/glympse/android/hal/GVector;)V
.registers 3
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/ay;->jQ:Lcom/glympse/android/core/GPrimitive;
invoke-direct {p0}, Lcom/glympse/android/lib/ay;->save()V
return-void
.end method
.method public batchFailed(Lcom/glympse/android/hal/GVector;)V
.registers 3
invoke-direct {p0}, Lcom/glympse/android/lib/ay;->load()Lcom/glympse/android/core/GPrimitive;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/ay;->jP:Lcom/glympse/android/core/GPrimitive;
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/ay;->jQ:Lcom/glympse/android/core/GPrimitive;
return-void
.end method
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
.registers 8
const/4 v0, 0x1
if-ne v0, p2, :cond_50
and-int/lit8 v0, p3, 0x8
if-nez v0, :cond_89
and-int/lit16 v0, p3, 0x80
if-eqz v0, :cond_2e
const-string v0, "platform"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "state"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "started"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v0, v1, v2}, Lcom/glympse/android/lib/ay;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {p1}, Lcom/glympse/android/api/GGlympse;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v1
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GEventListener;
invoke-interface {v1, v0}, Lcom/glympse/android/api/GHistoryManager;->simulateAddedEvents(Lcom/glympse/android/api/GEventListener;)V
:goto_2d
:cond_2d
return-void
:cond_2e
const/high16 v0, 0x2
and-int/2addr v0, p3
if-eqz v0, :cond_3f
check-cast p4, Lcom/glympse/android/api/GTicket;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GEventListener;
invoke-interface {p4, v0}, Lcom/glympse/android/api/GTicket;->addListener(Lcom/glympse/android/api/GEventListener;)Z
goto :goto_2d
:cond_3f
const/high16 v0, 0x4
and-int/2addr v0, p3
if-eqz v0, :cond_2d
check-cast p4, Lcom/glympse/android/api/GTicket;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GEventListener;
invoke-interface {p4, v0}, Lcom/glympse/android/api/GTicket;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
goto :goto_2d
:cond_50
const/4 v0, 0x4
if-ne v0, p2, :cond_7e
and-int/lit8 v0, p3, 0x3
if-eqz v0, :cond_2d
check-cast p4, Lcom/glympse/android/api/GTicket;
iget-object v0, p0, Lcom/glympse/android/lib/ay;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getBatteryManager()Lcom/glympse/android/api/GBatteryManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GBatteryManagerPrivate;
invoke-interface {v0, p4}, Lcom/glympse/android/lib/GBatteryManagerPrivate;->logBatteryEvent(Lcom/glympse/android/api/GTicket;)V
and-int/lit8 v0, p3, 0x2
if-eqz v0, :cond_2d
const-string v0, "ticket"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "state"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "expired"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, p4, v0, v1, v2}, Lcom/glympse/android/lib/ay;->logEvent(Lcom/glympse/android/api/GTicket;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2d
:cond_7e
const/4 v0, 0x5
if-ne v0, p2, :cond_2d
and-int/lit8 v0, p3, 0x2
if-nez v0, :cond_89
and-int/lit8 v0, p3, 0x20
if-eqz v0, :cond_2d
:cond_89
invoke-direct {p0}, Lcom/glympse/android/lib/ay;->aF()V
goto :goto_2d
.end method
.method public logEvent(Lcom/glympse/android/api/GTicket;Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
.registers 9
invoke-static {p2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_f
if-eqz p3, :cond_f
invoke-interface {p3}, Lcom/glympse/android/core/GPrimitive;->type()I
move-result v0
const/4 v1, 0x2
if-eq v0, v1, :cond_10
:goto_f
:cond_f
return-void
:cond_10
iget-object v0, p0, Lcom/glympse/android/lib/ay;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_f
const-string v0, "e"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p3, v0, p2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
if-eqz p1, :cond_23
invoke-direct {p0, p1, p3}, Lcom/glympse/android/lib/ay;->a(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/core/GPrimitive;)V
goto :goto_f
:cond_23
iget-object v0, p0, Lcom/glympse/android/lib/ay;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GHistoryManager;->getTickets()Lcom/glympse/android/core/GArray;
move-result-object v2
invoke-interface {v2}, Lcom/glympse/android/core/GArray;->length()I
move-result v3
const/4 v0, 0x0
move v1, v0
:goto_33
if-ge v1, v3, :cond_f
invoke-interface {v2, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GTicket;
invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->isActive()Z
move-result v4
if-eqz v4, :cond_f
invoke-direct {p0, v0, p3}, Lcom/glympse/android/lib/ay;->a(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/core/GPrimitive;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_33
.end method
.method public logEvent(Lcom/glympse/android/api/GTicket;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
invoke-static {p3}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_c
invoke-static {p4}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
new-instance v0, Lcom/glympse/android/lib/Primitive;
const/4 v1, 0x2
invoke-direct {v0, v1}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
invoke-interface {v0, p3, p4}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0, p1, p2, v0}, Lcom/glympse/android/lib/ay;->logEvent(Lcom/glympse/android/api/GTicket;Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
goto :goto_c
.end method
.method public logEvent(Ljava/lang/String;)V
.registers 4
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_7
:goto_6
return-void
:cond_7
new-instance v0, Lcom/glympse/android/lib/Primitive;
const/4 v1, 0x2
invoke-direct {v0, v1}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
const/4 v1, 0x0
invoke-virtual {p0, v1, p1, v0}, Lcom/glympse/android/lib/ay;->logEvent(Lcom/glympse/android/api/GTicket;Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
goto :goto_6
.end method
.method public logEvent(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, v0, p1, p2}, Lcom/glympse/android/lib/ay;->logEvent(Lcom/glympse/android/api/GTicket;Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
return-void
.end method
.method public logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
invoke-static {p2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_c
invoke-static {p3}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
new-instance v0, Lcom/glympse/android/lib/Primitive;
const/4 v1, 0x2
invoke-direct {v0, v1}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
invoke-interface {v0, p2, p3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x0
invoke-virtual {p0, v1, p1, v0}, Lcom/glympse/android/lib/ay;->logEvent(Lcom/glympse/android/api/GTicket;Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
goto :goto_c
.end method
.method public sessionFailed(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Lcom/glympse/android/lib/ay;->load()Lcom/glympse/android/core/GPrimitive;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/ay;->jP:Lcom/glympse/android/core/GPrimitive;
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/ay;->jQ:Lcom/glympse/android/core/GPrimitive;
return-void
.end method
.method public start(Lcom/glympse/android/api/GGlympse;)V
.registers 7
check-cast p1, Lcom/glympse/android/lib/GGlympsePrivate;
iput-object p1, p0, Lcom/glympse/android/lib/ay;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget-object v0, p0, Lcom/glympse/android/lib/ay;->jO:Lcom/glympse/android/lib/hw;
iget-object v1, p0, Lcom/glympse/android/lib/ay;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getContextHolder()Lcom/glympse/android/hal/GContextHolder;
move-result-object v1
iget-object v2, p0, Lcom/glympse/android/lib/ay;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getPrefix()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
const-string v4, "diag_v2"
invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/glympse/android/lib/hw;->a(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/glympse/android/lib/ay;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GEventListener;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GGlympsePrivate;->addListener(Lcom/glympse/android/api/GEventListener;)Z
iget-object v0, p0, Lcom/glympse/android/lib/ay;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getNetworkManager()Lcom/glympse/android/api/GNetworkManager;
move-result-object v1
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GEventListener;
invoke-interface {v1, v0}, Lcom/glympse/android/api/GNetworkManager;->addListener(Lcom/glympse/android/api/GEventListener;)Z
invoke-direct {p0}, Lcom/glympse/android/lib/ay;->load()Lcom/glympse/android/core/GPrimitive;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/ay;->jP:Lcom/glympse/android/core/GPrimitive;
return-void
.end method
.method public stop()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/glympse/android/lib/ay;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getNetworkManager()Lcom/glympse/android/api/GNetworkManager;
move-result-object v1
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GEventListener;
invoke-interface {v1, v0}, Lcom/glympse/android/api/GNetworkManager;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
iget-object v1, p0, Lcom/glympse/android/lib/ay;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GEventListener;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GGlympsePrivate;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
iput-object v2, p0, Lcom/glympse/android/lib/ay;->jP:Lcom/glympse/android/core/GPrimitive;
iget-object v0, p0, Lcom/glympse/android/lib/ay;->jO:Lcom/glympse/android/lib/hw;
invoke-virtual {v0}, Lcom/glympse/android/lib/hw;->stop()V
iput-object v2, p0, Lcom/glympse/android/lib/ay;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
return-void
.end method