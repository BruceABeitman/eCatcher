.class  Lcom/glympse/android/lib/dz;
.super Ljava/lang/Object;
.source "Image.java"
.implements Lcom/glympse/android/lib/GImagePrivate;
.field private cb:I
.field private hE:Lcom/glympse/android/lib/CommonSink;
.field private je:Lcom/glympse/android/lib/GImageCache;
.field private kq:Ljava/lang/String;
.field private nA:I
.field private nB:Lcom/glympse/android/core/GDrawable;
.field private nC:Ljava/lang/String;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x3
iput v0, p0, Lcom/glympse/android/lib/dz;->nA:I
const/4 v0, 0x0
iput v0, p0, Lcom/glympse/android/lib/dz;->cb:I
new-instance v0, Lcom/glympse/android/lib/CommonSink;
const-string v1, "Image"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/glympse/android/lib/CommonSink;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/glympse/android/lib/dz;->hE:Lcom/glympse/android/lib/CommonSink;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Lcom/glympse/android/core/GDrawable;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x3
iput v0, p0, Lcom/glympse/android/lib/dz;->nA:I
if-eqz p2, :cond_1d
const/4 v0, 0x2
:goto_9
iput v0, p0, Lcom/glympse/android/lib/dz;->cb:I
iput-object p1, p0, Lcom/glympse/android/lib/dz;->kq:Ljava/lang/String;
iput-object p2, p0, Lcom/glympse/android/lib/dz;->nB:Lcom/glympse/android/core/GDrawable;
new-instance v0, Lcom/glympse/android/lib/CommonSink;
const-string v1, "Image"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/glympse/android/lib/CommonSink;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/glympse/android/lib/dz;->hE:Lcom/glympse/android/lib/CommonSink;
return-void
:cond_1d
const/4 v0, 0x0
goto :goto_9
.end method
.method public addListener(Lcom/glympse/android/api/GEventListener;)Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/dz;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->addListener(Lcom/glympse/android/api/GEventListener;)Z
move-result v0
return v0
.end method
.method public associateContext(JLjava/lang/Object;)V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/dz;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2, p3}, Lcom/glympse/android/lib/CommonSink;->associateContext(JLjava/lang/Object;)V
return-void
.end method
.method public attachCache(Lcom/glympse/android/lib/GImageCache;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/dz;->je:Lcom/glympse/android/lib/GImageCache;
return-void
.end method
.method public clearContext(J)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/dz;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->clearContext(J)V
return-void
.end method
.method public deriveContext(Lcom/glympse/android/api/GEventSink;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/dz;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->deriveContext(Lcom/glympse/android/api/GEventSink;)V
return-void
.end method
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
.registers 11
iget-object v0, p0, Lcom/glympse/android/lib/dz;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/glympse/android/api/GEventSink;
move-object v2, p1
move v3, p2
move v4, p3
move-object v5, p4
invoke-virtual/range {v0 .. v5}, Lcom/glympse/android/lib/CommonSink;->eventsOccurred(Lcom/glympse/android/api/GEventSink;Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
return-void
.end method
.method public getContext(J)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/dz;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->getContext(J)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getContextKeys()Ljava/util/Enumeration;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/dz;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getContextKeys()Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public getDrawable()Lcom/glympse/android/core/GDrawable;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/dz;->nB:Lcom/glympse/android/core/GDrawable;
return-object v0
.end method
.method public getHashCode()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/dz;->nC:Ljava/lang/String;
return-object v0
.end method
.method public getListeners()Lcom/glympse/android/core/GArray;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/dz;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getListeners()Lcom/glympse/android/core/GArray;
move-result-object v0
return-object v0
.end method
.method public getState()I
.registers 2
iget v0, p0, Lcom/glympse/android/lib/dz;->cb:I
return v0
.end method
.method public getSupportedCache()I
.registers 2
iget v0, p0, Lcom/glympse/android/lib/dz;->nA:I
return v0
.end method
.method public getUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/dz;->kq:Ljava/lang/String;
return-object v0
.end method
.method public hasContext(J)Z
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/dz;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->hasContext(J)Z
move-result v0
return v0
.end method
.method public load()Z
.registers 4
const/4 v0, 0x1
const/4 v1, 0x2
iget v2, p0, Lcom/glympse/android/lib/dz;->cb:I
if-eq v1, v2, :cond_a
iget v1, p0, Lcom/glympse/android/lib/dz;->cb:I
if-ne v0, v1, :cond_b
:cond_a
:goto_a
return v0
:cond_b
iget-object v1, p0, Lcom/glympse/android/lib/dz;->kq:Ljava/lang/String;
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_17
const/4 v1, 0x0
iput-object v1, p0, Lcom/glympse/android/lib/dz;->nB:Lcom/glympse/android/core/GDrawable;
goto :goto_a
:cond_17
iget-object v0, p0, Lcom/glympse/android/lib/dz;->je:Lcom/glympse/android/lib/GImageCache;
if-nez v0, :cond_1d
const/4 v0, 0x0
goto :goto_a
:cond_1d
iget-object v1, p0, Lcom/glympse/android/lib/dz;->je:Lcom/glympse/android/lib/GImageCache;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GImage;
iget-object v2, p0, Lcom/glympse/android/lib/dz;->kq:Ljava/lang/String;
invoke-interface {v1, v0, v2}, Lcom/glympse/android/lib/GImageCache;->extract(Lcom/glympse/android/api/GImage;Ljava/lang/String;)Z
move-result v0
goto :goto_a
.end method
.method public removeListener(Lcom/glympse/android/api/GEventListener;)Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/dz;->hE:Lcom/glympse/android/lib/CommonSink;
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
move-result v0
return v0
.end method
.method public setDrawable(Lcom/glympse/android/core/GDrawable;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/dz;->nB:Lcom/glympse/android/core/GDrawable;
return-void
.end method
.method public setHashCode(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/dz;->nC:Ljava/lang/String;
return-void
.end method
.method public setState(I)V
.registers 2
iput p1, p0, Lcom/glympse/android/lib/dz;->cb:I
return-void
.end method
.method public setSupportedCache(I)V
.registers 2
iput p1, p0, Lcom/glympse/android/lib/dz;->nA:I
return-void
.end method
.method public setUrl(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/dz;->kq:Ljava/lang/String;
return-void
.end method
.method public unload()Z
.registers 4
const/4 v1, 0x1
const/4 v0, 0x0
iget v2, p0, Lcom/glympse/android/lib/dz;->cb:I
if-ne v1, v2, :cond_7
:goto_6
:cond_6
return v0
:cond_7
iget-object v2, p0, Lcom/glympse/android/lib/dz;->je:Lcom/glympse/android/lib/GImageCache;
if-eqz v2, :cond_6
const/4 v2, 0x0
iput-object v2, p0, Lcom/glympse/android/lib/dz;->nB:Lcom/glympse/android/core/GDrawable;
iput v0, p0, Lcom/glympse/android/lib/dz;->cb:I
move v0, v1
goto :goto_6
.end method