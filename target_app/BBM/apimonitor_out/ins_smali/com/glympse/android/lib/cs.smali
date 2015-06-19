.class  Lcom/glympse/android/lib/cs;
.super Ljava/lang/Object;
.source "Group.java"
.implements Ljava/lang/Runnable;
.field private mr:Lcom/glympse/android/lib/cq;
.method public constructor <init>(Lcom/glympse/android/lib/cq;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/cs;->mr:Lcom/glympse/android/lib/cq;
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/cs;->mr:Lcom/glympse/android/lib/cq;
invoke-virtual {v0}, Lcom/glympse/android/lib/cq;->orderChanged()V
return-void
.end method