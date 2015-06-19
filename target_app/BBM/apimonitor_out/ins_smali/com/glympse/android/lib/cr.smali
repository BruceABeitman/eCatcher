.class  Lcom/glympse/android/lib/cr;
.super Ljava/lang/Object;
.source "Group.java"
.implements Lcom/glympse/android/api/GEventListener;
.field private mr:Lcom/glympse/android/lib/cq;
.method public constructor <init>(Lcom/glympse/android/lib/cq;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/cr;->mr:Lcom/glympse/android/lib/cq;
return-void
.end method
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
.registers 6
and-int/lit8 v0, p3, 0x4
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/glympse/android/lib/cr;->mr:Lcom/glympse/android/lib/cq;
invoke-virtual {v0}, Lcom/glympse/android/lib/cq;->bJ()V
:cond_9
:goto_9
return-void
:cond_a
and-int/lit8 v0, p3, 0x2
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/glympse/android/lib/cr;->mr:Lcom/glympse/android/lib/cq;
invoke-virtual {v0}, Lcom/glympse/android/lib/cq;->bJ()V
goto :goto_9
.end method