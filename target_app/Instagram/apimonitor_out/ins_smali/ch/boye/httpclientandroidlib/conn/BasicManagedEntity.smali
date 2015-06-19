.class public Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;
.super Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;
.source "BasicManagedEntity.java"
.implements Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;
.implements Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;
.field protected final attemptReuse:Z
.field protected managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
.method public constructor <init>(Lch/boye/httpclientandroidlib/HttpEntity;Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;Z)V
.registers 6
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;-><init>(Lch/boye/httpclientandroidlib/HttpEntity;)V
if-nez p2, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Connection may not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p2, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
iput-boolean p3, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->attemptReuse:Z
return-void
.end method
.method private ensureConsumed()V
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
if-nez v0, :cond_5
:goto_4
return-void
:try_start_5
:cond_5
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->attemptReuse:Z
if-eqz v0, :cond_13
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->wrappedEntity:Lch/boye/httpclientandroidlib/HttpEntity;
invoke-static {v0}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->markReusable()V
:cond_13
:try_end_13
.catchall {:try_start_5 .. :try_end_13} :catchall_17
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->releaseManagedConnection()V
goto :goto_4
:catchall_17
move-exception v0
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->releaseManagedConnection()V
throw v0
.end method
.method public abortConnection()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
if-eqz v0, :cond_c
:try_start_5
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->abortConnection()V
:try_end_a
.catchall {:try_start_5 .. :try_end_a} :catchall_d
iput-object v1, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
:cond_c
return-void
:catchall_d
move-exception v0
iput-object v1, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
throw v0
.end method
.method public consumeContent()V
.registers 1
invoke-direct {p0}, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->ensureConsumed()V
return-void
.end method
.method public eofDetected(Ljava/io/InputStream;)Z
.registers 3
:try_start_0
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->attemptReuse:Z
if-eqz v0, :cond_10
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
if-eqz v0, :cond_10
invoke-virtual {p1}, Ljava/io/InputStream;->close()V
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->markReusable()V
:try_end_10
.catchall {:try_start_0 .. :try_end_10} :catchall_15
:cond_10
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->releaseManagedConnection()V
const/4 v0, 0x0
return v0
:catchall_15
move-exception v0
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->releaseManagedConnection()V
throw v0
.end method
.method public getContent()Ljava/io/InputStream;
.registers 3
new-instance v0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;
iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->wrappedEntity:Lch/boye/httpclientandroidlib/HttpEntity;
invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v1
invoke-direct {v0, v1, p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;-><init>(Ljava/io/InputStream;Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;)V
return-object v0
.end method
.method public isRepeatable()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public releaseConnection()V
.registers 1
invoke-direct {p0}, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->ensureConsumed()V
return-void
.end method
.method protected releaseManagedConnection()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
if-eqz v0, :cond_c
:try_start_5
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->releaseConnection()V
:try_end_a
.catchall {:try_start_5 .. :try_end_a} :catchall_d
iput-object v1, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
:cond_c
return-void
:catchall_d
move-exception v0
iput-object v1, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
throw v0
.end method
.method public streamAbort(Ljava/io/InputStream;)Z
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
if-eqz v0, :cond_9
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->abortConnection()V
:cond_9
const/4 v0, 0x0
return v0
.end method
.method public streamClosed(Ljava/io/InputStream;)Z
.registers 3
:try_start_0
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->attemptReuse:Z
if-eqz v0, :cond_10
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
if-eqz v0, :cond_10
invoke-virtual {p1}, Ljava/io/InputStream;->close()V
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->markReusable()V
:try_end_10
.catchall {:try_start_0 .. :try_end_10} :catchall_15
:cond_10
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->releaseManagedConnection()V
const/4 v0, 0x0
return v0
:catchall_15
move-exception v0
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->releaseManagedConnection()V
throw v0
.end method
.method public writeTo(Ljava/io/OutputStream;)V
.registers 2
invoke-super {p0, p1}, Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;->writeTo(Ljava/io/OutputStream;)V
invoke-direct {p0}, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->ensureConsumed()V
return-void
.end method