.class  Lcom/glympse/android/lib/ho;
.super Lcom/glympse/android/lib/HttpJob;
.source "ServiceMotd.java"
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field private gK:Ljava/lang/String;
.field private gM:Lcom/glympse/android/lib/GConfigPrivate;
.field private gO:Ljava/lang/String;
.field private hW:Ljava/lang/String;
.field private kR:Ljava/lang/String;
.field private nP:Ljava/lang/String;
.field private sc:Ljava/lang/String;
.field private sd:Lcom/glympse/android/lib/hp;
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;)V
.registers 4
invoke-direct {p0}, Lcom/glympse/android/lib/HttpJob;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/glympse/android/lib/ho;->_readResponseForFailedCall:Z
iput-object p1, p0, Lcom/glympse/android/lib/ho;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget-object v0, p0, Lcom/glympse/android/lib/ho;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GConfigPrivate;
iput-object v0, p0, Lcom/glympse/android/lib/ho;->gM:Lcom/glympse/android/lib/GConfigPrivate;
iget-object v0, p0, Lcom/glympse/android/lib/ho;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GUserManager;->getSelf()Lcom/glympse/android/api/GUser;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GUserPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GUserPrivate;->getId()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/glympse/android/lib/ho;->gK:Ljava/lang/String;
invoke-interface {v0}, Lcom/glympse/android/lib/GUserPrivate;->getNickname()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/ho;->nP:Ljava/lang/String;
iget-object v0, p0, Lcom/glympse/android/lib/ho;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/lib/GServerPost;->getUserAgent()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/ho;->hW:Ljava/lang/String;
iget-object v0, p0, Lcom/glympse/android/lib/ho;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getMotdUrl()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/ho;->kR:Ljava/lang/String;
iget-object v0, p0, Lcom/glympse/android/lib/ho;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->getDeviceId()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/ho;->gO:Ljava/lang/String;
iget-object v0, p0, Lcom/glympse/android/lib/ho;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->getMotdContext()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/ho;->sc:Ljava/lang/String;
return-void
.end method
.method public static D(Ljava/lang/String;)J
.registers 3
const-string v0, "info"
invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_b
const-wide/16 v0, 0x1
:goto_a
return-wide v0
:cond_b
const-string v0, "dump"
invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_16
const-wide/16 v0, 0x2
goto :goto_a
:cond_16
const-string v0, "notice"
invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_21
const-wide/16 v0, 0x3
goto :goto_a
:cond_21
const-string v0, "warning"
invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_2c
const-wide/16 v0, 0x4
goto :goto_a
:cond_2c
const-string v0, "error"
invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_37
const-wide/16 v0, 0x5
goto :goto_a
:cond_37
const-string v0, "critical"
invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_42
const-wide/16 v0, 0x6
goto :goto_a
:cond_42
const-wide/16 v0, 0x7
goto :goto_a
.end method
.method public onComplete()V
.registers 8
const/4 v3, 0x5
const-wide/16 v5, 0x0
invoke-super {p0}, Lcom/glympse/android/lib/HttpJob;->onComplete()V
iget-object v0, p0, Lcom/glympse/android/lib/ho;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isStarted()Z
move-result v0
if-nez v0, :cond_12
invoke-virtual {p0}, Lcom/glympse/android/lib/ho;->abort()V
:cond_11
:goto_11
return-void
:cond_12
iget-object v0, p0, Lcom/glympse/android/lib/ho;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getNetworkManager()Lcom/glympse/android/api/GNetworkManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GNetworkManagerPrivate;
invoke-virtual {p0}, Lcom/glympse/android/lib/ho;->isSucceeded()Z
move-result v1
if-nez v1, :cond_31
iget v1, p0, Lcom/glympse/android/lib/ho;->_failures:I
int-to-long v1, v1
const-wide/16 v3, 0x5
cmp-long v1, v1, v3
if-lez v1, :cond_11
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GNetworkManagerPrivate;->completeMotd(Z)V
invoke-virtual {p0}, Lcom/glympse/android/lib/ho;->abort()V
goto :goto_11
:cond_31
iget-object v1, p0, Lcom/glympse/android/lib/ho;->sd:Lcom/glympse/android/lib/hp;
iget-object v1, v1, Lcom/glympse/android/lib/hp;->hf:Ljava/lang/String;
const-string v2, "ok"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_ff
iget-object v1, p0, Lcom/glympse/android/lib/ho;->sd:Lcom/glympse/android/lib/hp;
iget-object v1, v1, Lcom/glympse/android/lib/hp;->sc:Ljava/lang/String;
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_f9
iget-object v1, p0, Lcom/glympse/android/lib/ho;->gM:Lcom/glympse/android/lib/GConfigPrivate;
iget-object v2, p0, Lcom/glympse/android/lib/ho;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J
move-result-wide v2
iget-object v4, p0, Lcom/glympse/android/lib/ho;->sd:Lcom/glympse/android/lib/hp;
iget-object v4, v4, Lcom/glympse/android/lib/hp;->sc:Ljava/lang/String;
invoke-interface {v1, v2, v3, v4}, Lcom/glympse/android/lib/GConfigPrivate;->saveMotdContext(JLjava/lang/String;)V
iget-object v1, p0, Lcom/glympse/android/lib/ho;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GConfigPrivate;->getContents()Lcom/glympse/android/core/GPrimitive;
move-result-object v1
iget-object v2, p0, Lcom/glympse/android/lib/ho;->sd:Lcom/glympse/android/lib/hp;
iget-wide v2, v2, Lcom/glympse/android/lib/hp;->sg:J
cmp-long v2, v5, v2
if-eqz v2, :cond_71
const-string v2, "g.fileLog"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/glympse/android/lib/ho;->sd:Lcom/glympse/android/lib/hp;
iget-wide v3, v3, Lcom/glympse/android/lib/hp;->sg:J
invoke-interface {v1, v2, v3, v4}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V
:cond_71
iget-object v2, p0, Lcom/glympse/android/lib/ho;->sd:Lcom/glympse/android/lib/hp;
iget-wide v2, v2, Lcom/glympse/android/lib/hp;->sh:J
cmp-long v2, v5, v2
if-eqz v2, :cond_86
const-string v2, "g.dbgLog"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/glympse/android/lib/ho;->sd:Lcom/glympse/android/lib/hp;
iget-wide v3, v3, Lcom/glympse/android/lib/hp;->sh:J
invoke-interface {v1, v2, v3, v4}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V
:cond_86
iget-object v2, p0, Lcom/glympse/android/lib/ho;->sd:Lcom/glympse/android/lib/hp;
iget-object v2, v2, Lcom/glympse/android/lib/hp;->jF:Ljava/lang/String;
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_9d
const-string v2, "g.logUrl"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/glympse/android/lib/ho;->sd:Lcom/glympse/android/lib/hp;
iget-object v3, v3, Lcom/glympse/android/lib/hp;->jF:Ljava/lang/String;
invoke-interface {v1, v2, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_9d
iget-object v2, p0, Lcom/glympse/android/lib/ho;->sd:Lcom/glympse/android/lib/hp;
iget-wide v2, v2, Lcom/glympse/android/lib/hp;->si:J
cmp-long v2, v5, v2
if-eqz v2, :cond_b2
const-string v2, "g.getRt"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/glympse/android/lib/ho;->sd:Lcom/glympse/android/lib/hp;
iget-wide v3, v3, Lcom/glympse/android/lib/hp;->si:J
invoke-interface {v1, v2, v3, v4}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V
:cond_b2
iget-object v1, p0, Lcom/glympse/android/lib/ho;->sd:Lcom/glympse/android/lib/hp;
iget-object v1, v1, Lcom/glympse/android/lib/hp;->so:Lcom/glympse/android/core/GPrimitive;
if-eqz v1, :cond_c1
iget-object v1, p0, Lcom/glympse/android/lib/ho;->gM:Lcom/glympse/android/lib/GConfigPrivate;
iget-object v2, p0, Lcom/glympse/android/lib/ho;->sd:Lcom/glympse/android/lib/hp;
iget-object v2, v2, Lcom/glympse/android/lib/hp;->so:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v1, v2}, Lcom/glympse/android/lib/GConfigPrivate;->setSupportedServers(Lcom/glympse/android/core/GPrimitive;)V
:cond_c1
iget-object v1, p0, Lcom/glympse/android/lib/ho;->gM:Lcom/glympse/android/lib/GConfigPrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GConfigPrivate;->save()V
iget-object v1, p0, Lcom/glympse/android/lib/ho;->sd:Lcom/glympse/android/lib/hp;
iget-wide v1, v1, Lcom/glympse/android/lib/hp;->sg:J
long-to-int v1, v1
iget-object v2, p0, Lcom/glympse/android/lib/ho;->sd:Lcom/glympse/android/lib/hp;
iget-wide v2, v2, Lcom/glympse/android/lib/hp;->sh:J
long-to-int v2, v2
iget-object v3, p0, Lcom/glympse/android/lib/ho;->sd:Lcom/glympse/android/lib/hp;
iget-object v3, v3, Lcom/glympse/android/lib/hp;->jF:Ljava/lang/String;
invoke-static {v1, v2, v3}, Lcom/glympse/android/lib/Debug;->updateLevels(IILjava/lang/String;)V
iget-object v1, p0, Lcom/glympse/android/lib/ho;->sd:Lcom/glympse/android/lib/hp;
iget-boolean v1, v1, Lcom/glympse/android/lib/hp;->sf:Z
if-eqz v1, :cond_f3
const/4 v1, 0x3
const-string v2, "[MOTD] Found"
invoke-static {v1, v2}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
iget-object v1, p0, Lcom/glympse/android/lib/ho;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget-object v2, p0, Lcom/glympse/android/lib/ho;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const v3, 0x10002
const/16 v4, 0x10
iget-object v5, p0, Lcom/glympse/android/lib/ho;->sd:Lcom/glympse/android/lib/hp;
iget-object v5, v5, Lcom/glympse/android/lib/hp;->se:Lcom/glympse/android/lib/gg;
invoke-interface {v1, v2, v3, v4, v5}, Lcom/glympse/android/lib/GGlympsePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
:goto_f3
:cond_f3
const/4 v1, 0x1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GNetworkManagerPrivate;->completeMotd(Z)V
goto/16 :goto_11
:cond_f9
const-string v1, "[MOTD] Context missing"
invoke-static {v3, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
goto :goto_f3
:cond_ff
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "[MOTD] Code: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/glympse/android/lib/ho;->sd:Lcom/glympse/android/lib/hp;
iget-object v2, v2, Lcom/glympse/android/lib/hp;->hf:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " Error: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/glympse/android/lib/ho;->sd:Lcom/glympse/android/lib/hp;
iget-object v2, v2, Lcom/glympse/android/lib/hp;->hg:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v3, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
goto :goto_f3
.end method
.method public onPreProcess()V
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x200
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
invoke-static {}, Lcom/glympse/android/lib/StaticConfig;->HTTPS()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/glympse/android/lib/ho;->kR:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "?username="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/glympse/android/lib/ho;->gK:Ljava/lang/String;
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_25
iget-object v1, p0, Lcom/glympse/android/lib/ho;->gK:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_25
iget-object v1, p0, Lcom/glympse/android/lib/ho;->nP:Ljava/lang/String;
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_3b
const-string v1, "&name="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/glympse/android/lib/ho;->nP:Ljava/lang/String;
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_3b
iget-object v1, p0, Lcom/glympse/android/lib/ho;->gO:Ljava/lang/String;
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_4d
const-string v1, "&deviceid="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/glympse/android/lib/ho;->gO:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_4d
iget-object v1, p0, Lcom/glympse/android/lib/ho;->sc:Ljava/lang/String;
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_5f
const-string v1, "&context="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/glympse/android/lib/ho;->sc:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_5f
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/ho;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;
invoke-interface {v1, v0}, Lcom/glympse/android/hal/GHttpConnection;->setUrl(Ljava/lang/String;)V
iget-object v1, p0, Lcom/glympse/android/lib/ho;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;
const-string v2, "X-GlympseAgent"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/glympse/android/lib/ho;->hW:Ljava/lang/String;
invoke-interface {v1, v2, v3}, Lcom/glympse/android/hal/GHttpConnection;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/glympse/android/lib/ho;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;
const-string v2, "Content-Type"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v3, "application/json"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v2, v3}, Lcom/glympse/android/hal/GHttpConnection;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/glympse/android/lib/ho;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;
const/4 v2, 0x0
invoke-interface {v1, v2}, Lcom/glympse/android/hal/GHttpConnection;->setRequestMethod(Z)V
const/4 v1, 0x3
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "[MOTD] Url: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
return-void
.end method
.method public onProcessResponse()V
.registers 4
invoke-virtual {p0}, Lcom/glympse/android/lib/ho;->isSucceeded()Z
move-result v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
iget-object v0, p0, Lcom/glympse/android/lib/ho;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;
invoke-interface {v0}, Lcom/glympse/android/hal/GHttpConnection;->getResponseDataString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/lib/Debug;->dumpPackets(Ljava/lang/String;)V
new-instance v1, Lcom/glympse/android/lib/json/JsonParser;
invoke-direct {v1}, Lcom/glympse/android/lib/json/JsonParser;-><init>()V
new-instance v2, Lcom/glympse/android/lib/hp;
invoke-direct {v2, v1}, Lcom/glympse/android/lib/hp;-><init>(Lcom/glympse/android/lib/json/GJsonHandlerStack;)V
iput-object v2, p0, Lcom/glympse/android/lib/ho;->sd:Lcom/glympse/android/lib/hp;
iget-object v2, p0, Lcom/glympse/android/lib/ho;->sd:Lcom/glympse/android/lib/hp;
invoke-interface {v1, v2}, Lcom/glympse/android/lib/json/GJsonParser;->pushHandler(Lcom/glympse/android/lib/json/GJsonHandler;)V
invoke-interface {v1, v0}, Lcom/glympse/android/lib/json/GJsonParser;->parse(Ljava/lang/String;)Z
move-result v0
invoke-interface {v1}, Lcom/glympse/android/lib/json/GJsonParser;->clearStack()V
iput-boolean v0, p0, Lcom/glympse/android/lib/ho;->_success:Z
goto :goto_6
.end method