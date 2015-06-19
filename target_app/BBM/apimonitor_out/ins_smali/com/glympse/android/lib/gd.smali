.class  Lcom/glympse/android/lib/gd;
.super Ljava/lang/Object;
.source "NetworkManager.java"
.implements Lcom/glympse/android/lib/GNetworkManagerPrivate;
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field private hE:Lcom/glympse/android/lib/CommonSink;
.field private qu:Z
.field private qv:I
.field private qw:Lcom/glympse/android/lib/GJob;
.method public constructor <init>()V
.registers 3
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lcom/glympse/android/lib/gd;->qu:Z
iput v0, p0, Lcom/glympse/android/lib/gd;->qv:I
new-instance v0, Lcom/glympse/android/lib/CommonSink;
const-string v1, "NetworkManager"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/glympse/android/lib/CommonSink;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/glympse/android/lib/gd;->hE:Lcom/glympse/android/lib/CommonSink;
return-void
.end method
.method public addListener(Lcom/glympse/android/api/GEventListener;)Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/gd;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->addListener(Lcom/glympse/android/api/GEventListener;)Z
move-result v0
return v0
.end method
.method public associateContext(JLjava/lang/Object;)V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/gd;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2, p3}, Lcom/glympse/android/lib/CommonSink;->associateContext(JLjava/lang/Object;)V
return-void
.end method
.method public checkMotd(Z)V
.registers 9
const/4 v1, 0x0
iget-object v0, p0, Lcom/glympse/android/lib/gd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/glympse/android/lib/gd;->qw:Lcom/glympse/android/lib/GJob;
if-eqz v0, :cond_a
:goto_9
:cond_9
return-void
:cond_a
const/4 v2, 0x1
if-eqz p1, :cond_50
iget-object v0, p0, Lcom/glympse/android/lib/gd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GConfigPrivate;
iget-object v3, p0, Lcom/glympse/android/lib/gd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v3}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J
move-result-wide v3
invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->getMotdLastRequest()J
move-result-wide v5
sub-long/2addr v3, v5
const-wide/32 v5, 0x5265c00
cmp-long v0, v3, v5
if-gez v0, :cond_4e
move v0, v1
:goto_28
iget-object v2, p0, Lcom/glympse/android/lib/gd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;
move-result-object v2
invoke-interface {v2}, Lcom/glympse/android/lib/GServerPost;->getAuthState()I
move-result v2
const/4 v3, 0x3
if-eq v2, v3, :cond_4c
:goto_35
if-eqz v1, :cond_9
new-instance v0, Lcom/glympse/android/lib/ho;
iget-object v1, p0, Lcom/glympse/android/lib/gd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {v0, v1}, Lcom/glympse/android/lib/ho;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;)V
iput-object v0, p0, Lcom/glympse/android/lib/gd;->qw:Lcom/glympse/android/lib/GJob;
iget-object v0, p0, Lcom/glympse/android/lib/gd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getJobQueue()Lcom/glympse/android/lib/GJobQueue;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/gd;->qw:Lcom/glympse/android/lib/GJob;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GJobQueue;->addJob(Lcom/glympse/android/lib/GJob;)V
goto :goto_9
:cond_4c
move v1, v0
goto :goto_35
:cond_4e
move v0, v2
goto :goto_28
:cond_50
move v1, v2
goto :goto_35
.end method
.method public clearContext(J)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/gd;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->clearContext(J)V
return-void
.end method
.method public completeMotd(Z)V
.registers 4
if-eqz p1, :cond_c
iget v0, p0, Lcom/glympse/android/lib/gd;->qv:I
if-lez v0, :cond_c
const/4 v0, 0x5
const-string v1, "[MOTD] Succeeded while failing to talk to primary server"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
:cond_c
iget-object v0, p0, Lcom/glympse/android/lib/gd;->qw:Lcom/glympse/android/lib/GJob;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/glympse/android/lib/gd;->qw:Lcom/glympse/android/lib/GJob;
invoke-interface {v0}, Lcom/glympse/android/lib/GJob;->abort()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/gd;->qw:Lcom/glympse/android/lib/GJob;
:cond_18
return-void
.end method
.method public deriveContext(Lcom/glympse/android/api/GEventSink;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/gd;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->deriveContext(Lcom/glympse/android/api/GEventSink;)V
return-void
.end method
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
.registers 11
iget-object v0, p0, Lcom/glympse/android/lib/gd;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/glympse/android/api/GEventSink;
move-object v2, p1
move v3, p2
move v4, p3
move-object v5, p4
invoke-virtual/range {v0 .. v5}, Lcom/glympse/android/lib/CommonSink;->eventsOccurred(Lcom/glympse/android/api/GEventSink;Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
return-void
.end method
.method public getContext(J)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/gd;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->getContext(J)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getContextKeys()Ljava/util/Enumeration;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/gd;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getContextKeys()Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public getListeners()Lcom/glympse/android/core/GArray;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/gd;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getListeners()Lcom/glympse/android/core/GArray;
move-result-object v0
return-object v0
.end method
.method public hasContext(J)Z
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/gd;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->hasContext(J)Z
move-result v0
return v0
.end method
.method public isInitialDataReceived()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/gd;->qu:Z
return v0
.end method
.method public isNetworkError()Z
.registers 5
const-wide/16 v0, 0x3
iget v2, p0, Lcom/glympse/android/lib/gd;->qv:I
int-to-long v2, v2
cmp-long v0, v0, v2
if-gez v0, :cond_b
const/4 v0, 0x1
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public removeListener(Lcom/glympse/android/api/GEventListener;)Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/gd;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
move-result v0
return v0
.end method
.method public requestCompleted(Z)V
.registers 10
const/4 v7, 0x0
const/4 v6, 0x5
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v2, p0, Lcom/glympse/android/lib/gd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-nez v2, :cond_9
:goto_8
:cond_8
return-void
:cond_9
if-nez p1, :cond_47
iget v2, p0, Lcom/glympse/android/lib/gd;->qv:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/glympse/android/lib/gd;->qv:I
const-wide/16 v2, 0x4
iget v4, p0, Lcom/glympse/android/lib/gd;->qv:I
int-to-long v4, v4
cmp-long v2, v2, v4
if-nez v2, :cond_3a
iget-object v2, p0, Lcom/glympse/android/lib/gd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-virtual {p0, v2, v6, v0, v7}, Lcom/glympse/android/lib/gd;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
iget-object v0, p0, Lcom/glympse/android/lib/gd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getDiagnosticsManager()Lcom/glympse/android/lib/GDiagnosticsManager;
move-result-object v0
const-string v2, "network"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v3, "state"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v4, "failing"
invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-interface {v0, v2, v3, v4}, Lcom/glympse/android/lib/GDiagnosticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:cond_3a
const-wide/16 v2, 0x1e
iget v0, p0, Lcom/glympse/android/lib/gd;->qv:I
int-to-long v4, v0
cmp-long v0, v2, v4
if-nez v0, :cond_8
invoke-virtual {p0, v1}, Lcom/glympse/android/lib/gd;->checkMotd(Z)V
goto :goto_8
:cond_47
const-wide/16 v2, 0x3
iget v4, p0, Lcom/glympse/android/lib/gd;->qv:I
int-to-long v4, v4
cmp-long v2, v2, v4
if-gez v2, :cond_76
:goto_50
iput v1, p0, Lcom/glympse/android/lib/gd;->qv:I
if-eqz v0, :cond_8
iget-object v0, p0, Lcom/glympse/android/lib/gd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/4 v1, 0x2
invoke-virtual {p0, v0, v6, v1, v7}, Lcom/glympse/android/lib/gd;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
iget-object v0, p0, Lcom/glympse/android/lib/gd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getDiagnosticsManager()Lcom/glympse/android/lib/GDiagnosticsManager;
move-result-object v0
const-string v1, "network"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "state"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v3, "recovered"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/lib/GDiagnosticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_8
:cond_76
move v0, v1
goto :goto_50
.end method
.method public setInitialDataReceived(Z)V
.registers 2
iput-boolean p1, p0, Lcom/glympse/android/lib/gd;->qu:Z
return-void
.end method
.method public start(Lcom/glympse/android/lib/GGlympsePrivate;)V
.registers 3
const/4 v0, 0x0
iput-object p1, p0, Lcom/glympse/android/lib/gd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iput-boolean v0, p0, Lcom/glympse/android/lib/gd;->qu:Z
iput v0, p0, Lcom/glympse/android/lib/gd;->qv:I
return-void
.end method
.method public stop()V
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/gd;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->removeAllListeners()Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/gd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
return-void
.end method