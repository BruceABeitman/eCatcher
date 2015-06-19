.class  Lcom/glympse/android/lib/cn;
.super Ljava/lang/Object;
.source "GogoService.java"
.implements Ljava/lang/Runnable;
.field private ma:Lcom/glympse/android/lib/cm;
.method public constructor <init>(Lcom/glympse/android/lib/cm;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/cn;->ma:Lcom/glympse/android/lib/cm;
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/cn;->ma:Lcom/glympse/android/lib/cm;
invoke-virtual {v0}, Lcom/glympse/android/lib/cm;->bH()V
return-void
.end method