.class  Lcom/glympse/android/lib/eb;
.super Lcom/glympse/android/lib/fb;
.source "ImageCache.java"
.field private kq:Ljava/lang/String;
.field private nM:Lcom/glympse/android/lib/ea;
.field private nN:Lcom/glympse/android/api/GImage;
.field final synthetic nO:Lcom/glympse/android/lib/ea;
.method public constructor <init>(Lcom/glympse/android/lib/ea;Lcom/glympse/android/lib/ea;Lcom/glympse/android/api/GImage;Ljava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/glympse/android/lib/eb;->nO:Lcom/glympse/android/lib/ea;
invoke-direct {p0}, Lcom/glympse/android/lib/fb;-><init>()V
iput-object p2, p0, Lcom/glympse/android/lib/eb;->nM:Lcom/glympse/android/lib/ea;
iput-object p3, p0, Lcom/glympse/android/lib/eb;->nN:Lcom/glympse/android/api/GImage;
iput-object p4, p0, Lcom/glympse/android/lib/eb;->kq:Ljava/lang/String;
return-void
.end method
.method public onProcess()V
.registers 4
iget-object v1, p0, Lcom/glympse/android/lib/eb;->nM:Lcom/glympse/android/lib/ea;
iget-object v2, p0, Lcom/glympse/android/lib/eb;->kq:Ljava/lang/String;
iget-object v0, p0, Lcom/glympse/android/lib/eb;->nN:Lcom/glympse/android/api/GImage;
invoke-interface {v0}, Lcom/glympse/android/api/GImage;->getDrawable()Lcom/glympse/android/core/GDrawable;
move-result-object v0
check-cast v0, Lcom/glympse/android/hal/GDrawablePrivate;
invoke-virtual {v1, v2, v0}, Lcom/glympse/android/lib/ea;->saveToCache(Ljava/lang/String;Lcom/glympse/android/hal/GDrawablePrivate;)V
return-void
.end method