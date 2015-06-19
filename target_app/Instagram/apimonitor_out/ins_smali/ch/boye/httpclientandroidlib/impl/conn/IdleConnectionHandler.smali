.class public Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler;
.super Ljava/lang/Object;
.source "IdleConnectionHandler.java"
.field private final connectionToTimes:Ljava/util/Map;
.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;
return-void
.end method
.method public add(Lch/boye/httpclientandroidlib/HttpConnection;JLjava/util/concurrent/TimeUnit;)V
.registers 12
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v0
if-eqz v0, :cond_20
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Adding connection at: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:cond_20
iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;
new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler$TimeValues;
move-wide v3, p2
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler$TimeValues;-><init>(JJLjava/util/concurrent/TimeUnit;)V
invoke-interface {v6, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public closeExpiredConnections()V
.registers 10
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v0
if-eqz v0, :cond_20
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v1, Ljava/lang/StringBuilder;
const-string v4, "Checking for expired connections, now: "
invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:cond_20
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_2a
:cond_2a
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_77
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lch/boye/httpclientandroidlib/HttpConnection;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler$TimeValues;
#getter for: Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler$TimeValues;->timeExpires:J
invoke-static {v0}, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler$TimeValues;->access$000(Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler$TimeValues;)J
move-result-wide v5
cmp-long v5, v5, v2
if-gtz v5, :cond_2a
iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v5}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v5
if-eqz v5, :cond_6a
iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v6, Ljava/lang/StringBuilder;
const-string v7, "Closing connection, expired @: "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
#getter for: Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler$TimeValues;->timeExpires:J
invoke-static {v0}, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler$TimeValues;->access$000(Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler$TimeValues;)J
move-result-wide v7
invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v5, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:try_start_6a
:cond_6a
invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpConnection;->close()V
:try_end_6d
.catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e
goto :goto_2a
:catch_6e
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v5, "I/O error closing connection"
invoke-virtual {v1, v5, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_2a
:cond_77
return-void
.end method
.method public closeIdleConnections(J)V
.registers 12
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
sub-long v2, v0, p1
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v0
if-eqz v0, :cond_22
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v1, Ljava/lang/StringBuilder;
const-string v4, "Checking for connections, idle timeout: "
invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:cond_22
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_2c
:cond_2c
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_75
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lch/boye/httpclientandroidlib/HttpConnection;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler$TimeValues;
#getter for: Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler$TimeValues;->timeAdded:J
invoke-static {v0}, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler$TimeValues;->access$100(Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler$TimeValues;)J
move-result-wide v5
cmp-long v0, v5, v2
if-gtz v0, :cond_2c
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v0
if-eqz v0, :cond_68
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v7, Ljava/lang/StringBuilder;
const-string v8, "Closing idle connection, connection time: "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v0, v5}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:cond_68
:try_start_68
invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpConnection;->close()V
:try_end_6b
.catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c
goto :goto_2c
:catch_6c
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v5, "I/O error closing connection"
invoke-virtual {v1, v5, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_2c
:cond_75
return-void
.end method
.method public remove(Lch/boye/httpclientandroidlib/HttpConnection;)Z
.registers 8
const/4 v1, 0x1
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler$TimeValues;
if-nez v0, :cond_14
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v2, "Removing a connection that never existed!"
invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;)V
move v0, v1
:goto_13
return v0
:cond_14
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
#getter for: Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler$TimeValues;->timeExpires:J
invoke-static {v0}, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler$TimeValues;->access$000(Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler$TimeValues;)J
move-result-wide v4
cmp-long v0, v2, v4
if-gtz v0, :cond_22
move v0, v1
goto :goto_13
:cond_22
const/4 v0, 0x0
goto :goto_13
.end method
.method public removeAll()V
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
return-void
.end method