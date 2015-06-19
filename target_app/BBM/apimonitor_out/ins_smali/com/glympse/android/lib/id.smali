.class  Lcom/glympse/android/lib/id;
.super Lcom/glympse/android/lib/ar;
.source "TicketComplete.java"
.field protected oh:Lcom/glympse/android/lib/GTicketPrivate;
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/core/GPrimitive;)V
.registers 5
invoke-interface {p2}, Lcom/glympse/android/lib/GTicketPrivate;->getId()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p1, v0, p3}, Lcom/glympse/android/lib/ar;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
iput-object p2, p0, Lcom/glympse/android/lib/id;->oh:Lcom/glympse/android/lib/GTicketPrivate;
return-void
.end method
.method public process()Z
.registers 3
invoke-super {p0}, Lcom/glympse/android/lib/ar;->process()Z
iget-object v0, p0, Lcom/glympse/android/lib/id;->jx:Lcom/glympse/android/lib/l;
iget-object v0, v0, Lcom/glympse/android/lib/l;->hf:Ljava/lang/String;
const-string v1, "ok"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/glympse/android/lib/id;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->setCompleted()V
:cond_14
const/4 v0, 0x1
return v0
.end method