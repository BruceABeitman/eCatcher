.class  Lcom/glympse/android/lib/em;
.super Ljava/lang/Object;
.source "InviteCreate.java"
.implements Lcom/glympse/android/hal/GSmsListener;
.field private ow:Lcom/glympse/android/lib/ek;
.method public constructor <init>(Lcom/glympse/android/lib/ek;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/em;->ow:Lcom/glympse/android/lib/ek;
return-void
.end method
.method public complete(ZILjava/lang/String;Lcom/glympse/android/core/GCommon;)V
.registers 6
iget-object v0, p0, Lcom/glympse/android/lib/em;->ow:Lcom/glympse/android/lib/ek;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/ek;->g(Z)V
return-void
.end method
.method public serviceNoLongerAvailable()V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/em;->ow:Lcom/glympse/android/lib/ek;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/glympse/android/lib/ek;->g(Z)V
return-void
.end method