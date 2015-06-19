.class  Lorg/scribe/oauth/OAuth10aServiceImpl$TimeoutTuner;
.super Lorg/scribe/model/RequestTuner;
.source "OAuth10aServiceImpl.java"
.field private final duration:I
.field private final unit:Ljava/util/concurrent/TimeUnit;
.method public constructor <init>(ILjava/util/concurrent/TimeUnit;)V
.registers 3
invoke-direct {p0}, Lorg/scribe/model/RequestTuner;-><init>()V
iput p1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl$TimeoutTuner;->duration:I
iput-object p2, p0, Lorg/scribe/oauth/OAuth10aServiceImpl$TimeoutTuner;->unit:Ljava/util/concurrent/TimeUnit;
return-void
.end method
.method public tune(Lorg/scribe/model/Request;)V
.registers 4
iget v0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl$TimeoutTuner;->duration:I
iget-object v1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl$TimeoutTuner;->unit:Ljava/util/concurrent/TimeUnit;
invoke-virtual {p1, v0, v1}, Lorg/scribe/model/Request;->setReadTimeout(ILjava/util/concurrent/TimeUnit;)V
return-void
.end method