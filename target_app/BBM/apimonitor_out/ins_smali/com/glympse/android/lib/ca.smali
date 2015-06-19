.class  Lcom/glympse/android/lib/ca;
.super Ljava/lang/Object;
.source "Glympse.java"
.implements Ljava/lang/Runnable;
.field private lI:Lcom/glympse/android/lib/bz;
.method public constructor <init>(Lcom/glympse/android/lib/bz;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/ca;->lI:Lcom/glympse/android/lib/bz;
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/ca;->lI:Lcom/glympse/android/lib/bz;
invoke-static {v0}, Lcom/glympse/android/lib/bz;->a(Lcom/glympse/android/lib/bz;)Z
move-result v0
if-nez v0, :cond_9
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/glympse/android/lib/ca;->lI:Lcom/glympse/android/lib/bz;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/glympse/android/lib/bz;->a(Lcom/glympse/android/lib/bz;Ljava/lang/Runnable;)Ljava/lang/Runnable;
iget-object v0, p0, Lcom/glympse/android/lib/ca;->lI:Lcom/glympse/android/lib/bz;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/glympse/android/lib/bz;->a(Lcom/glympse/android/lib/bz;Z)V
goto :goto_8
.end method