.class  Lcom/glympse/android/lib/ic;
.super Ljava/lang/Object;
.source "Ticket.java"
.implements Ljava/lang/Runnable;
.field private ta:Lcom/glympse/android/lib/hz;
.method public constructor <init>(Lcom/glympse/android/lib/hz;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/ic;->ta:Lcom/glympse/android/lib/hz;
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/ic;->ta:Lcom/glympse/android/lib/hz;
invoke-virtual {v0}, Lcom/glympse/android/lib/hz;->cP()V
return-void
.end method