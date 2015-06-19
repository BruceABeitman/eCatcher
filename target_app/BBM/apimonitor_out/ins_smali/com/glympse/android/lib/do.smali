.class  Lcom/glympse/android/lib/do;
.super Ljava/lang/Object;
.source "HandlerManager.java"
.implements Ljava/lang/Runnable;
.field private mU:Lcom/glympse/android/lib/dn;
.field private mV:Ljava/lang/Runnable;
.method public constructor <init>(Lcom/glympse/android/lib/dn;Ljava/lang/Runnable;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/do;->mU:Lcom/glympse/android/lib/dn;
iput-object p2, p0, Lcom/glympse/android/lib/do;->mV:Ljava/lang/Runnable;
return-void
.end method
.method public run()V
.registers 4
iget-object v1, p0, Lcom/glympse/android/lib/do;->mU:Lcom/glympse/android/lib/dn;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Runnable;
iget-object v2, p0, Lcom/glympse/android/lib/do;->mV:Ljava/lang/Runnable;
invoke-virtual {v1, v0, v2}, Lcom/glympse/android/lib/dn;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
return-void
.end method