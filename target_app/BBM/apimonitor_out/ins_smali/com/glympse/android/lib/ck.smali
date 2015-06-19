.class  Lcom/glympse/android/lib/ck;
.super Ljava/lang/Object;
.source "GogoLocationProvider.java"
.implements Lcom/glympse/android/lib/cg;
.field private lW:Lcom/glympse/android/lib/ci;
.method public constructor <init>(Lcom/glympse/android/lib/ci;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/ck;->lW:Lcom/glympse/android/lib/ci;
return-void
.end method
.method public a(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;Z)V
.registers 4
return-void
.end method
.method public bu()V
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/ck;->lW:Lcom/glympse/android/lib/ci;
invoke-virtual {v0}, Lcom/glympse/android/lib/ci;->bu()V
return-void
.end method
.method public locationChanged(Lcom/glympse/android/core/GLocation;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/ck;->lW:Lcom/glympse/android/lib/ci;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/ci;->locationChanged(Lcom/glympse/android/core/GLocation;)V
return-void
.end method