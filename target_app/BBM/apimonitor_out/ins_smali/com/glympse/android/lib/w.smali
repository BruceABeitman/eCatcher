.class  Lcom/glympse/android/lib/w;
.super Ljava/lang/Object;
.source "AutoProxProvider.java"
.implements Ljava/lang/Runnable;
.field private hO:Lcom/glympse/android/lib/v;
.method public constructor <init>(Lcom/glympse/android/lib/v;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/w;->hO:Lcom/glympse/android/lib/v;
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/w;->hO:Lcom/glympse/android/lib/v;
invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getTime()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/glympse/android/lib/v;->d(J)Z
iget-object v0, p0, Lcom/glympse/android/lib/w;->hO:Lcom/glympse/android/lib/v;
invoke-virtual {v0}, Lcom/glympse/android/lib/v;->am()V
return-void
.end method