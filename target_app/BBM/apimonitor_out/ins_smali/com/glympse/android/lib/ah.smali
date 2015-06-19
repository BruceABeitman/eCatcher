.class abstract Lcom/glympse/android/lib/ah;
.super Lcom/glympse/android/lib/ag;
.source "ContactLocal.java"
.field protected ew:Ljava/lang/String;
.field protected iX:Ljava/lang/String;
.field protected iY:Ljava/lang/String;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/glympse/android/lib/ag;-><init>()V
return-void
.end method
.method public getAddress()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/ah;->ew:Ljava/lang/String;
return-object v0
.end method
.method public getNormalizedAddress()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/ah;->iY:Ljava/lang/String;
return-object v0
.end method