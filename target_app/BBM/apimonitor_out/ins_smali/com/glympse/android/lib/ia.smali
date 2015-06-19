.class  Lcom/glympse/android/lib/ia;
.super Ljava/lang/Object;
.source "Ticket.java"
.implements Ljava/lang/Runnable;
.field private ta:Lcom/glympse/android/lib/hz;
.field final synthetic tb:Lcom/glympse/android/lib/hz;
.method public constructor <init>(Lcom/glympse/android/lib/hz;Lcom/glympse/android/lib/hz;)V
.registers 3
iput-object p1, p0, Lcom/glympse/android/lib/ia;->tb:Lcom/glympse/android/lib/hz;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/glympse/android/lib/ia;->ta:Lcom/glympse/android/lib/hz;
return-void
.end method
.method public run()V
.registers 3
const/4 v0, 0x1
const-string v1, "[Ticket.CompletionTimer.run] Fired"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/lib/ia;->ta:Lcom/glympse/android/lib/hz;
invoke-static {v0}, Lcom/glympse/android/lib/hz;->a(Lcom/glympse/android/lib/hz;)V
return-void
.end method