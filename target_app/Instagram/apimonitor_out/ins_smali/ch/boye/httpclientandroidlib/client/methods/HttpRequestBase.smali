.class public abstract Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;
.super Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;
.source "HttpRequestBase.java"
.implements Lch/boye/httpclientandroidlib/client/methods/AbortableHttpRequest;
.implements Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
.implements Ljava/lang/Cloneable;
.field private abortLock:Ljava/util/concurrent/locks/Lock;
.field private aborted:Z
.field private connRequest:Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;
.field private releaseTrigger:Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;
.field private uri:Ljava/net/URI;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;-><init>()V
new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;
invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;
return-void
.end method
.method public abort()V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_5
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->aborted:Z
:try_end_7
.catchall {:try_start_5 .. :try_end_7} :catchall_28
if-eqz v0, :cond_f
iget-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
:cond_e
:goto_e
return-void
:cond_f
const/4 v0, 0x1
:try_start_10
iput-boolean v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->aborted:Z
iget-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->connRequest:Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;
iget-object v1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->releaseTrigger:Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;
:try_end_16
.catchall {:try_start_10 .. :try_end_16} :catchall_28
iget-object v2, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V
if-eqz v0, :cond_20
invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;->abortRequest()V
:cond_20
if-eqz v1, :cond_e
:try_start_22
invoke-interface {v1}, Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;->abortConnection()V
:try_end_25
.catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26
goto :goto_e
:catch_26
move-exception v0
goto :goto_e
:catchall_28
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method public clone()Ljava/lang/Object;
.registers 4
const/4 v2, 0x0
invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;
new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;
invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V
iput-object v1, v0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;
const/4 v1, 0x0
iput-boolean v1, v0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->aborted:Z
iput-object v2, v0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->releaseTrigger:Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;
iput-object v2, v0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->connRequest:Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;
iget-object v1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;
invoke-static {v1}, Lch/boye/httpclientandroidlib/client/utils/CloneUtils;->clone(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lch/boye/httpclientandroidlib/message/HeaderGroup;
iput-object v1, v0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;
iget-object v1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->params:Lch/boye/httpclientandroidlib/params/HttpParams;
invoke-static {v1}, Lch/boye/httpclientandroidlib/client/utils/CloneUtils;->clone(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lch/boye/httpclientandroidlib/params/HttpParams;
iput-object v1, v0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->params:Lch/boye/httpclientandroidlib/params/HttpParams;
return-object v0
.end method
.method public abstract getMethod()Ljava/lang/String;
.end method
.method public getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;
.registers 2
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;
move-result-object v0
invoke-static {v0}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->getVersion(Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/ProtocolVersion;
move-result-object v0
return-object v0
.end method
.method public getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
.registers 5
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;
move-result-object v2
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;
move-result-object v3
const/4 v0, 0x0
if-eqz v3, :cond_13
invoke-virtual {v3}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;
move-result-object v0
:cond_13
if-eqz v0, :cond_1b
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v3
if-nez v3, :cond_1d
:cond_1b
const-string v0, "/"
:cond_1d
new-instance v3, Lch/boye/httpclientandroidlib/message/BasicRequestLine;
invoke-direct {v3, v1, v0, v2}, Lch/boye/httpclientandroidlib/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lch/boye/httpclientandroidlib/ProtocolVersion;)V
return-object v3
.end method
.method public getURI()Ljava/net/URI;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->uri:Ljava/net/URI;
return-object v0
.end method
.method public isAborted()Z
.registers 2
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->aborted:Z
return v0
.end method
.method public setConnectionRequest(Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;)V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_5
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->aborted:Z
if-eqz v0, :cond_18
new-instance v0, Ljava/io/IOException;
const-string v1, "Request already aborted"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_11
.catchall {:try_start_5 .. :try_end_11} :catchall_11
:catchall_11
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
:cond_18
const/4 v0, 0x0
:try_start_19
iput-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->releaseTrigger:Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;
iput-object p1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->connRequest:Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;
:try_end_1d
.catchall {:try_start_19 .. :try_end_1d} :catchall_11
iget-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-void
.end method
.method public setReleaseTrigger(Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;)V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_5
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->aborted:Z
if-eqz v0, :cond_18
new-instance v0, Ljava/io/IOException;
const-string v1, "Request already aborted"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_11
.catchall {:try_start_5 .. :try_end_11} :catchall_11
:catchall_11
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
:cond_18
const/4 v0, 0x0
:try_start_19
iput-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->connRequest:Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;
iput-object p1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->releaseTrigger:Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;
:try_end_1d
.catchall {:try_start_19 .. :try_end_1d} :catchall_11
iget-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-void
.end method
.method public setURI(Ljava/net/URI;)V
.registers 2
iput-object p1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->uri:Ljava/net/URI;
return-void
.end method