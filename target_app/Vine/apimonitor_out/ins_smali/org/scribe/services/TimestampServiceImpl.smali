.class public Lorg/scribe/services/TimestampServiceImpl;
.super Ljava/lang/Object;
.source "TimestampServiceImpl.java"
.implements Lorg/scribe/services/TimestampService;
.field private timer:Lorg/scribe/services/TimestampServiceImpl$Timer;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lorg/scribe/services/TimestampServiceImpl$Timer;
invoke-direct {v0}, Lorg/scribe/services/TimestampServiceImpl$Timer;-><init>()V
iput-object v0, p0, Lorg/scribe/services/TimestampServiceImpl;->timer:Lorg/scribe/services/TimestampServiceImpl$Timer;
return-void
.end method
.method private getTs()Ljava/lang/Long;
.registers 5
iget-object v0, p0, Lorg/scribe/services/TimestampServiceImpl;->timer:Lorg/scribe/services/TimestampServiceImpl$Timer;
invoke-virtual {v0}, Lorg/scribe/services/TimestampServiceImpl$Timer;->getMilis()Ljava/lang/Long;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
const-wide/16 v2, 0x3e8
div-long/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
return-object v0
.end method
.method public getNonce()Ljava/lang/String;
.registers 6
invoke-direct {p0}, Lorg/scribe/services/TimestampServiceImpl;->getTs()Ljava/lang/Long;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v1
iget-object v3, p0, Lorg/scribe/services/TimestampServiceImpl;->timer:Lorg/scribe/services/TimestampServiceImpl$Timer;
invoke-virtual {v3}, Lorg/scribe/services/TimestampServiceImpl$Timer;->getRandomInteger()Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
move-result v3
int-to-long v3, v3
add-long/2addr v1, v3
invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public getTimestampInSeconds()Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lorg/scribe/services/TimestampServiceImpl;->getTs()Ljava/lang/Long;
move-result-object v0
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method  setTimer(Lorg/scribe/services/TimestampServiceImpl$Timer;)V
.registers 2
iput-object p1, p0, Lorg/scribe/services/TimestampServiceImpl;->timer:Lorg/scribe/services/TimestampServiceImpl$Timer;
return-void
.end method