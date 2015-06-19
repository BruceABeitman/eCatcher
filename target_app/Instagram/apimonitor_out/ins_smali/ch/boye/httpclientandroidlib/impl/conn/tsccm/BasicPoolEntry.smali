.class public Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;
.super Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;
.source "BasicPoolEntry.java"
.field private final created:J
.field private expiry:J
.field private updated:J
.field private validUntil:J
.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V
.registers 9
const-wide/16 v3, -0x1
sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
move-object v0, p0
move-object v1, p1
move-object v2, p2
invoke-direct/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;JLjava/util/concurrent/TimeUnit;)V
return-void
.end method
.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;JLjava/util/concurrent/TimeUnit;)V
.registers 10
invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V
if-nez p2, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP route may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->created:J
const-wide/16 v0, 0x0
cmp-long v0, p3, v0
if-lez v0, :cond_27
iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->created:J
invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
move-result-wide v2
add-long/2addr v0, v2
iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->validUntil:J
:goto_22
iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->validUntil:J
iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->expiry:J
return-void
:cond_27
const-wide v0, 0x7fffffffffffffffL
iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->validUntil:J
goto :goto_22
.end method
.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/ref/ReferenceQueue;)V
.registers 6
invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V
if-nez p2, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP route may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->created:J
const-wide v0, 0x7fffffffffffffffL
iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->validUntil:J
iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->validUntil:J
iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->expiry:J
return-void
.end method
.method protected final getConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->connection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;
return-object v0
.end method
.method public getCreated()J
.registers 3
iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->created:J
return-wide v0
.end method
.method public getExpiry()J
.registers 3
iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->expiry:J
return-wide v0
.end method
.method protected final getPlannedRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
return-object v0
.end method
.method public getUpdated()J
.registers 3
iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->updated:J
return-wide v0
.end method
.method public getValidUntil()J
.registers 3
iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->validUntil:J
return-wide v0
.end method
.method protected final getWeakRef()Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntryRef;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public isExpired(J)Z
.registers 5
iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->expiry:J
cmp-long v0, p1, v0
if-ltz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method protected shutdownEntry()V
.registers 1
invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->shutdownEntry()V
return-void
.end method
.method public updateExpiry(JLjava/util/concurrent/TimeUnit;)V
.registers 8
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->updated:J
const-wide/16 v0, 0x0
cmp-long v0, p1, v0
if-lez v0, :cond_1c
iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->updated:J
invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
move-result-wide v2
add-long/2addr v0, v2
:goto_13
iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->validUntil:J
invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J
move-result-wide v0
iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->expiry:J
return-void
:cond_1c
const-wide v0, 0x7fffffffffffffffL
goto :goto_13
.end method