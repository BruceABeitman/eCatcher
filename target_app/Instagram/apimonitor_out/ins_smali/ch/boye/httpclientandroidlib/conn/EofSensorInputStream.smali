.class public Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;
.super Ljava/io/InputStream;
.source "EofSensorInputStream.java"
.implements Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;
.field private final eofWatcher:Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;
.field private selfClosed:Z
.field protected wrappedStream:Ljava/io/InputStream;
.method public constructor <init>(Ljava/io/InputStream;Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;)V
.registers 5
invoke-direct {p0}, Ljava/io/InputStream;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Wrapped stream may not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;
const/4 v0, 0x0
iput-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->selfClosed:Z
iput-object p2, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->eofWatcher:Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;
return-void
.end method
.method public abortConnection()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->selfClosed:Z
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->checkAbort()V
return-void
.end method
.method public available()I
.registers 3
const/4 v0, 0x0
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->isReadAllowed()Z
move-result v1
if-eqz v1, :cond_d
:try_start_7
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->available()I
:try_end_c
.catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_e
move-result v0
:cond_d
return v0
:catch_e
move-exception v0
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->checkAbort()V
throw v0
.end method
.method protected checkAbort()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;
if-eqz v0, :cond_1b
const/4 v0, 0x1
:try_start_6
iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->eofWatcher:Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;
if-eqz v1, :cond_12
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->eofWatcher:Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;
iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;
invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;->streamAbort(Ljava/io/InputStream;)Z
move-result v0
:cond_12
if-eqz v0, :cond_19
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
:try_end_19
.catchall {:try_start_6 .. :try_end_19} :catchall_1c
:cond_19
iput-object v2, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;
:cond_1b
return-void
:catchall_1c
move-exception v0
iput-object v2, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;
throw v0
.end method
.method protected checkClose()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;
if-eqz v0, :cond_1b
const/4 v0, 0x1
:try_start_6
iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->eofWatcher:Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;
if-eqz v1, :cond_12
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->eofWatcher:Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;
iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;
invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;->streamClosed(Ljava/io/InputStream;)Z
move-result v0
:cond_12
if-eqz v0, :cond_19
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
:try_end_19
.catchall {:try_start_6 .. :try_end_19} :catchall_1c
:cond_19
iput-object v2, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;
:cond_1b
return-void
:catchall_1c
move-exception v0
iput-object v2, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;
throw v0
.end method
.method protected checkEOF(I)V
.registers 5
const/4 v2, 0x0
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;
if-eqz v0, :cond_1d
if-gez p1, :cond_1d
const/4 v0, 0x1
:try_start_8
iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->eofWatcher:Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;
if-eqz v1, :cond_14
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->eofWatcher:Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;
iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;
invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;->eofDetected(Ljava/io/InputStream;)Z
move-result v0
:cond_14
if-eqz v0, :cond_1b
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
:try_end_1b
.catchall {:try_start_8 .. :try_end_1b} :catchall_1e
:cond_1b
iput-object v2, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;
:cond_1d
return-void
:catchall_1e
move-exception v0
iput-object v2, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;
throw v0
.end method
.method public close()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->selfClosed:Z
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->checkClose()V
return-void
.end method
.method protected isReadAllowed()Z
.registers 3
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->selfClosed:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/io/IOException;
const-string v1, "Attempted read on closed stream."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;
if-eqz v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public read()I
.registers 3
const/4 v0, -0x1
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->isReadAllowed()Z
move-result v1
if-eqz v1, :cond_10
:try_start_7
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->read()I
move-result v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->checkEOF(I)V
:try_end_10
.catch Ljava/io/IOException; {:try_start_7 .. :try_end_10} :catch_11
:cond_10
return v0
:catch_11
move-exception v0
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->checkAbort()V
throw v0
.end method
.method public read([B)I
.registers 4
const/4 v0, -0x1
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->isReadAllowed()Z
move-result v1
if-eqz v1, :cond_10
:try_start_7
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;
invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I
move-result v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->checkEOF(I)V
:try_end_10
.catch Ljava/io/IOException; {:try_start_7 .. :try_end_10} :catch_11
:cond_10
return v0
:catch_11
move-exception v0
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->checkAbort()V
throw v0
.end method
.method public read([BII)I
.registers 6
const/4 v0, -0x1
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->isReadAllowed()Z
move-result v1
if-eqz v1, :cond_10
:try_start_7
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;
invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
move-result v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->checkEOF(I)V
:try_end_10
.catch Ljava/io/IOException; {:try_start_7 .. :try_end_10} :catch_11
:cond_10
return v0
:catch_11
move-exception v0
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->checkAbort()V
throw v0
.end method
.method public releaseConnection()V
.registers 1
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->close()V
return-void
.end method