.class public Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;
.super Ljava/lang/Object;
.source "BasicEofSensorWatcher.java"
.implements Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;
.field protected final attemptReuse:Z
.field protected final managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;Z)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Connection may not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
iput-boolean p2, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->attemptReuse:Z
return-void
.end method
.method public eofDetected(Ljava/io/InputStream;)Z
.registers 4
:try_start_0
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->attemptReuse:Z
if-eqz v0, :cond_c
invoke-virtual {p1}, Ljava/io/InputStream;->close()V
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->markReusable()V
:cond_c
:try_end_c
.catchall {:try_start_0 .. :try_end_c} :catchall_13
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->releaseConnection()V
const/4 v0, 0x0
return v0
:catchall_13
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
invoke-interface {v1}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->releaseConnection()V
throw v0
.end method
.method public streamAbort(Ljava/io/InputStream;)Z
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->abortConnection()V
const/4 v0, 0x0
return v0
.end method
.method public streamClosed(Ljava/io/InputStream;)Z
.registers 4
:try_start_0
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->attemptReuse:Z
if-eqz v0, :cond_c
invoke-virtual {p1}, Ljava/io/InputStream;->close()V
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->markReusable()V
:cond_c
:try_end_c
.catchall {:try_start_0 .. :try_end_c} :catchall_13
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->releaseConnection()V
const/4 v0, 0x0
return v0
:catchall_13
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
invoke-interface {v1}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->releaseConnection()V
throw v0
.end method