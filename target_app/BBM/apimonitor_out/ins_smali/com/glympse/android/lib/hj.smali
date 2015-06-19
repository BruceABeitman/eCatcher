.class  Lcom/glympse/android/lib/hj;
.super Lcom/glympse/android/lib/HttpJob;
.source "SerialJob.java"
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field protected f:Ljava/lang/String;
.field private gQ:Ljava/lang/String;
.field private hS:Lcom/glympse/android/lib/GBatchListener;
.field private hT:Lcom/glympse/android/hal/GVector;
.field private hU:Lcom/glympse/android/lib/GNetworkManagerPrivate;
.field private hV:Z
.field private hW:Ljava/lang/String;
.field private rK:Ljava/lang/String;
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GBatchListener;Lcom/glympse/android/hal/GVector;)V
.registers 6
invoke-direct {p0}, Lcom/glympse/android/lib/HttpJob;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/glympse/android/lib/hj;->_readResponseForFailedCall:Z
iput-object p1, p0, Lcom/glympse/android/lib/hj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iput-object p2, p0, Lcom/glympse/android/lib/hj;->hS:Lcom/glympse/android/lib/GBatchListener;
iput-object p3, p0, Lcom/glympse/android/lib/hj;->hT:Lcom/glympse/android/hal/GVector;
iget-object v0, p0, Lcom/glympse/android/lib/hj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getNetworkManager()Lcom/glympse/android/api/GNetworkManager;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GNetworkManagerPrivate;
iput-object v0, p0, Lcom/glympse/android/lib/hj;->hU:Lcom/glympse/android/lib/GNetworkManagerPrivate;
iget-object v0, p0, Lcom/glympse/android/lib/hj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/lib/GServerPost;->isSslEnabled()Z
move-result v1
iput-boolean v1, p0, Lcom/glympse/android/lib/hj;->hV:Z
invoke-interface {v0}, Lcom/glympse/android/lib/GServerPost;->getUserAgent()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/glympse/android/lib/hj;->hW:Ljava/lang/String;
invoke-interface {v0}, Lcom/glympse/android/lib/GServerPost;->getBaseUrl()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/glympse/android/lib/hj;->f:Ljava/lang/String;
invoke-interface {v0}, Lcom/glympse/android/lib/GServerPost;->getAccessToken()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/hj;->gQ:Ljava/lang/String;
return-void
.end method
.method private a(Z)V
.registers 5
const/4 v2, 0x0
iget-object v0, p0, Lcom/glympse/android/lib/hj;->hT:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GApiEndpoint;
iget v1, p0, Lcom/glympse/android/lib/hj;->_failures:I
invoke-interface {v0, p1, v1}, Lcom/glympse/android/lib/GApiEndpoint;->shouldRetry(ZI)Z
move-result v1
if-nez v1, :cond_19
invoke-interface {v0}, Lcom/glympse/android/lib/GApiEndpoint;->cancel()V
iget-object v0, p0, Lcom/glympse/android/lib/hj;->hT:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->removeElementAt(I)V
:cond_19
iget-object v0, p0, Lcom/glympse/android/lib/hj;->hT:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v0
if-nez v0, :cond_24
invoke-virtual {p0}, Lcom/glympse/android/lib/hj;->abort()V
:cond_24
return-void
.end method
.method private an()V
.registers 7
const/4 v5, 0x0
iget-object v0, p0, Lcom/glympse/android/lib/hj;->hT:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v5}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GApiEndpoint;
invoke-interface {v0}, Lcom/glympse/android/lib/GApiEndpoint;->getTime()J
move-result-wide v1
const-wide/16 v3, 0x0
cmp-long v3, v3, v1
if-eqz v3, :cond_1c
iget-object v3, p0, Lcom/glympse/android/lib/hj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v3}, Lcom/glympse/android/lib/GGlympsePrivate;->getCorrectedTime()Lcom/glympse/android/lib/GCorrectedTime;
move-result-object v3
invoke-interface {v3, v1, v2}, Lcom/glympse/android/lib/GCorrectedTime;->setServerTime(J)V
:cond_1c
invoke-interface {v0}, Lcom/glympse/android/lib/GApiEndpoint;->getResult()Ljava/lang/String;
move-result-object v1
const-string v2, "ok"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_57
invoke-interface {v0}, Lcom/glympse/android/lib/GApiEndpoint;->getError()Ljava/lang/String;
move-result-object v1
const-string v2, "oauth_token"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_43
iget-object v0, p0, Lcom/glympse/android/lib/hj;->hS:Lcom/glympse/android/lib/GBatchListener;
iget-object v1, p0, Lcom/glympse/android/lib/hj;->hT:Lcom/glympse/android/hal/GVector;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GBatchListener;->batchFailed(Lcom/glympse/android/hal/GVector;)V
iget-object v0, p0, Lcom/glympse/android/lib/hj;->hS:Lcom/glympse/android/lib/GBatchListener;
iget-object v1, p0, Lcom/glympse/android/lib/hj;->gQ:Ljava/lang/String;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GBatchListener;->sessionFailed(Ljava/lang/String;)V
:goto_42
:cond_42
return-void
:cond_43
const-string v2, "rate_limited"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_57
iget-object v0, p0, Lcom/glympse/android/lib/hj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;
move-result-object v0
const/high16 v1, 0x100
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GServerPost;->rememberEvents(I)V
goto :goto_42
:cond_57
invoke-interface {v0}, Lcom/glympse/android/lib/GApiEndpoint;->process()Z
move-result v1
if-eqz v1, :cond_93
const/4 v0, 0x3
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/glympse/android/lib/hj;->rK:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " succeeded"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
:goto_76
iget-object v0, p0, Lcom/glympse/android/lib/hj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isStarted()Z
move-result v0
if-eqz v0, :cond_42
iget-object v0, p0, Lcom/glympse/android/lib/hj;->hT:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v5}, Lcom/glympse/android/hal/GVector;->removeElementAt(I)V
iget-object v0, p0, Lcom/glympse/android/lib/hj;->hT:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v0
if-nez v0, :cond_c3
iget-object v0, p0, Lcom/glympse/android/lib/hj;->hS:Lcom/glympse/android/lib/GBatchListener;
iget-object v1, p0, Lcom/glympse/android/lib/hj;->hT:Lcom/glympse/android/hal/GVector;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GBatchListener;->batchCompleted(Lcom/glympse/android/hal/GVector;)V
goto :goto_42
:cond_93
const/4 v1, 0x4
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p0, Lcom/glympse/android/lib/hj;->rK:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " failed with error: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-interface {v0}, Lcom/glympse/android/lib/GApiEndpoint;->getError()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " details: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-interface {v0}, Lcom/glympse/android/lib/GApiEndpoint;->getErrorDetail()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
goto :goto_76
:cond_c3
iget-object v0, p0, Lcom/glympse/android/lib/hj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getJobQueue()Lcom/glympse/android/lib/GJobQueue;
move-result-object v1
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GJob;
const/4 v2, 0x1
invoke-interface {v1, v0, v2}, Lcom/glympse/android/lib/GJobQueue;->addJob(Lcom/glympse/android/lib/GJob;Z)V
goto/16 :goto_42
.end method
.method public onAbort()V
.registers 3
invoke-super {p0}, Lcom/glympse/android/lib/HttpJob;->onAbort()V
iget-object v0, p0, Lcom/glympse/android/lib/hj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isStarted()Z
move-result v0
if-nez v0, :cond_c
:goto_b
return-void
:cond_c
iget-object v0, p0, Lcom/glympse/android/lib/hj;->hT:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->elements()Ljava/util/Enumeration;
move-result-object v1
:goto_12
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_22
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GApiEndpoint;
invoke-interface {v0}, Lcom/glympse/android/lib/GApiEndpoint;->cancel()V
goto :goto_12
:cond_22
iget-object v0, p0, Lcom/glympse/android/lib/hj;->hS:Lcom/glympse/android/lib/GBatchListener;
iget-object v1, p0, Lcom/glympse/android/lib/hj;->hT:Lcom/glympse/android/hal/GVector;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GBatchListener;->batchFailed(Lcom/glympse/android/hal/GVector;)V
goto :goto_b
.end method
.method public onComplete()V
.registers 3
invoke-super {p0}, Lcom/glympse/android/lib/HttpJob;->onComplete()V
iget-object v0, p0, Lcom/glympse/android/lib/hj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isStarted()Z
move-result v0
if-nez v0, :cond_c
:goto_b
return-void
:cond_c
invoke-virtual {p0}, Lcom/glympse/android/lib/hj;->isSucceeded()Z
move-result v0
iget-object v1, p0, Lcom/glympse/android/lib/hj;->hU:Lcom/glympse/android/lib/GNetworkManagerPrivate;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GNetworkManagerPrivate;->requestCompleted(Z)V
if-nez v0, :cond_1c
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/glympse/android/lib/hj;->a(Z)V
goto :goto_b
:cond_1c
iget-object v0, p0, Lcom/glympse/android/lib/hj;->hU:Lcom/glympse/android/lib/GNetworkManagerPrivate;
const/4 v1, 0x1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GNetworkManagerPrivate;->setInitialDataReceived(Z)V
invoke-direct {p0}, Lcom/glympse/android/lib/hj;->an()V
goto :goto_b
.end method
.method public onPreProcess()V
.registers 6
const/4 v1, 0x0
iget-object v0, p0, Lcom/glympse/android/lib/hj;->hT:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v0
if-nez v0, :cond_d
invoke-virtual {p0}, Lcom/glympse/android/lib/hj;->abort()V
:goto_c
return-void
:cond_d
iget-object v0, p0, Lcom/glympse/android/lib/hj;->hT:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GApiEndpoint;
iget-boolean v2, p0, Lcom/glympse/android/lib/hj;->hV:Z
iget-object v3, p0, Lcom/glympse/android/lib/hj;->f:Ljava/lang/String;
iget-object v4, p0, Lcom/glympse/android/lib/hj;->gQ:Ljava/lang/String;
invoke-static {v2, v3, v0, v4}, Lcom/glympse/android/lib/j;->a(ZLjava/lang/String;Lcom/glympse/android/lib/GApiEndpoint;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/glympse/android/lib/hj;->rK:Ljava/lang/String;
iget-object v2, p0, Lcom/glympse/android/lib/hj;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;
iget-object v3, p0, Lcom/glympse/android/lib/hj;->rK:Ljava/lang/String;
invoke-interface {v2, v3}, Lcom/glympse/android/hal/GHttpConnection;->setUrl(Ljava/lang/String;)V
invoke-interface {v0}, Lcom/glympse/android/lib/GApiEndpoint;->userAgent()Z
move-result v2
if-eqz v2, :cond_3b
iget-object v2, p0, Lcom/glympse/android/lib/hj;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;
const-string v3, "X-GlympseAgent"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/glympse/android/lib/hj;->hW:Ljava/lang/String;
invoke-interface {v2, v3, v4}, Lcom/glympse/android/hal/GHttpConnection;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_3b
invoke-interface {v0}, Lcom/glympse/android/lib/GApiEndpoint;->post()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_63
const/4 v0, 0x1
:goto_42
if-eqz v0, :cond_55
iget-object v1, p0, Lcom/glympse/android/lib/hj;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;
const-string v3, "Content-Type"
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v4, "application/json"
invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-interface {v1, v3, v4}, Lcom/glympse/android/hal/GHttpConnection;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_55
iget-object v1, p0, Lcom/glympse/android/lib/hj;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;
invoke-interface {v1, v0}, Lcom/glympse/android/hal/GHttpConnection;->setRequestMethod(Z)V
iget-object v0, p0, Lcom/glympse/android/lib/hj;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;
invoke-interface {v0, v2}, Lcom/glympse/android/hal/GHttpConnection;->setRequestData(Ljava/lang/String;)V
invoke-static {v2}, Lcom/glympse/android/lib/Debug;->dumpPackets(Ljava/lang/String;)V
goto :goto_c
:cond_63
move v0, v1
goto :goto_42
.end method
.method public onProcessResponse()V
.registers 4
invoke-virtual {p0}, Lcom/glympse/android/lib/hj;->isSucceeded()Z
move-result v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
iget-object v0, p0, Lcom/glympse/android/lib/hj;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;
invoke-interface {v0}, Lcom/glympse/android/hal/GHttpConnection;->getResponseDataString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/glympse/android/lib/Debug;->dumpPackets(Ljava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/lib/hj;->hT:Lcom/glympse/android/hal/GVector;
const/4 v2, 0x0
invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GApiEndpoint;
new-instance v2, Lcom/glympse/android/lib/json/JsonParser;
invoke-direct {v2}, Lcom/glympse/android/lib/json/JsonParser;-><init>()V
invoke-interface {v0, v2}, Lcom/glympse/android/lib/GApiEndpoint;->getHandler(Lcom/glympse/android/lib/json/GJsonHandlerStack;)Lcom/glympse/android/lib/json/GJsonHandler;
move-result-object v0
invoke-interface {v2, v0}, Lcom/glympse/android/lib/json/GJsonParser;->pushHandler(Lcom/glympse/android/lib/json/GJsonHandler;)V
invoke-interface {v2, v1}, Lcom/glympse/android/lib/json/GJsonParser;->parse(Ljava/lang/String;)Z
move-result v0
invoke-interface {v2}, Lcom/glympse/android/lib/json/GJsonParser;->clearStack()V
iput-boolean v0, p0, Lcom/glympse/android/lib/hj;->_success:Z
if-nez v0, :cond_6
const/4 v0, 0x5
const-string v1, "http:batch: failed with parsing error"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
goto :goto_6
.end method
.method public onRetry()V
.registers 2
invoke-super {p0}, Lcom/glympse/android/lib/HttpJob;->onRetry()V
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/glympse/android/lib/hj;->a(Z)V
return-void
.end method