.class  Lorg/scribe/services/TimestampServiceImpl$Timer;
.super Ljava/lang/Object;
.source "TimestampServiceImpl.java"
.field private final rand:Ljava/util/Random;
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/Random;
invoke-direct {v0}, Ljava/util/Random;-><init>()V
iput-object v0, p0, Lorg/scribe/services/TimestampServiceImpl$Timer;->rand:Ljava/util/Random;
return-void
.end method
.method  getMilis()Ljava/lang/Long;
.registers 3
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
return-object v0
.end method
.method  getRandomInteger()Ljava/lang/Integer;
.registers 2
iget-object v0, p0, Lorg/scribe/services/TimestampServiceImpl$Timer;->rand:Ljava/util/Random;
invoke-virtual {v0}, Ljava/util/Random;->nextInt()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method