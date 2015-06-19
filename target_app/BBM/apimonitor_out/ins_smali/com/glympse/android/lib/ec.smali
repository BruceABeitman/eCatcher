.class  Lcom/glympse/android/lib/ec;
.super Lcom/glympse/android/lib/fb;
.source "ImageCache.java"
.field private nM:Lcom/glympse/android/lib/ea;
.field final synthetic nO:Lcom/glympse/android/lib/ea;
.method public constructor <init>(Lcom/glympse/android/lib/ea;Lcom/glympse/android/lib/ea;)V
.registers 3
iput-object p1, p0, Lcom/glympse/android/lib/ec;->nO:Lcom/glympse/android/lib/ea;
invoke-direct {p0}, Lcom/glympse/android/lib/fb;-><init>()V
iput-object p2, p0, Lcom/glympse/android/lib/ec;->nM:Lcom/glympse/android/lib/ea;
return-void
.end method
.method public onProcess()V
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/ec;->nM:Lcom/glympse/android/lib/ea;
invoke-virtual {v0}, Lcom/glympse/android/lib/ea;->bX()V
return-void
.end method