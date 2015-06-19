.class  Lcom/glympse/android/lib/cj;
.super Ljava/lang/Object;
.source "GogoLocationProvider.java"
.implements Ljava/lang/Runnable;
.field private lW:Lcom/glympse/android/lib/ci;
.method public constructor <init>(Lcom/glympse/android/lib/ci;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/cj;->lW:Lcom/glympse/android/lib/ci;
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/cj;->lW:Lcom/glympse/android/lib/ci;
invoke-virtual {v0}, Lcom/glympse/android/lib/ci;->bv()V
return-void
.end method