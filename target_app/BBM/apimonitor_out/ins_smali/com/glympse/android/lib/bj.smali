.class  Lcom/glympse/android/lib/bj;
.super Ljava/lang/Object;
.source "Event.java"
.implements Lcom/glympse/android/lib/GEvent;
.field private iA:I
.field private iz:I
.field private ky:Lcom/glympse/android/api/GEventListener;
.field private kz:Lcom/glympse/android/core/GCommon;
.method public constructor <init>(Lcom/glympse/android/api/GEventListener;IILcom/glympse/android/core/GCommon;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/bj;->ky:Lcom/glympse/android/api/GEventListener;
iput p2, p0, Lcom/glympse/android/lib/bj;->iz:I
iput p3, p0, Lcom/glympse/android/lib/bj;->iA:I
iput-object p4, p0, Lcom/glympse/android/lib/bj;->kz:Lcom/glympse/android/core/GCommon;
return-void
.end method
.method public static a(Lcom/glympse/android/api/GGlympse;Lcom/glympse/android/api/GEventListener;IILcom/glympse/android/core/GCommon;)V
.registers 8
new-instance v0, Lcom/glympse/android/lib/bj;
invoke-direct {v0, p1, p2, p3, p4}, Lcom/glympse/android/lib/bj;-><init>(Lcom/glympse/android/api/GEventListener;IILcom/glympse/android/core/GCommon;)V
invoke-interface {p0}, Lcom/glympse/android/api/GGlympse;->getHandler()Lcom/glympse/android/core/GHandler;
move-result-object v1
new-instance v2, Lcom/glympse/android/lib/bk;
invoke-direct {v2, p0, v0}, Lcom/glympse/android/lib/bk;-><init>(Lcom/glympse/android/api/GGlympse;Lcom/glympse/android/lib/GEvent;)V
invoke-interface {v1, v2}, Lcom/glympse/android/core/GHandler;->post(Ljava/lang/Runnable;)V
return-void
.end method
.method public send(Lcom/glympse/android/api/GGlympse;)V
.registers 6
iget-object v0, p0, Lcom/glympse/android/lib/bj;->ky:Lcom/glympse/android/api/GEventListener;
iget v1, p0, Lcom/glympse/android/lib/bj;->iz:I
iget v2, p0, Lcom/glympse/android/lib/bj;->iA:I
iget-object v3, p0, Lcom/glympse/android/lib/bj;->kz:Lcom/glympse/android/core/GCommon;
invoke-interface {v0, p1, v1, v2, v3}, Lcom/glympse/android/api/GEventListener;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
return-void
.end method