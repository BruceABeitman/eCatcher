.class  Lcom/glympse/android/lib/bh;
.super Lcom/glympse/android/lib/HttpJob;
.source "DownloadImageJob.java"
.field protected _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field protected ko:Z
.field protected kp:Lcom/glympse/android/lib/GImagePrivate;
.field protected kq:Ljava/lang/String;
.field protected kr:Ljava/lang/String;
.field protected ks:Ljava/lang/String;
.field protected kt:Lcom/glympse/android/hal/GDrawablePrivate;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/glympse/android/lib/HttpJob;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/glympse/android/lib/bh;->ko:Z
return-void
.end method
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GImagePrivate;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
const/4 v1, 0x1
invoke-direct {p0}, Lcom/glympse/android/lib/HttpJob;-><init>()V
iput-boolean v1, p0, Lcom/glympse/android/lib/bh;->ko:Z
iput-object p1, p0, Lcom/glympse/android/lib/bh;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iput-object p2, p0, Lcom/glympse/android/lib/bh;->kp:Lcom/glympse/android/lib/GImagePrivate;
iput-object p3, p0, Lcom/glympse/android/lib/bh;->kq:Ljava/lang/String;
iput-object p4, p0, Lcom/glympse/android/lib/bh;->kr:Ljava/lang/String;
iget-object v0, p0, Lcom/glympse/android/lib/bh;->kp:Lcom/glympse/android/lib/GImagePrivate;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GImagePrivate;->setState(I)V
return-void
.end method
.method public checkResponse(II)Z
.registers 4
const/16 v0, 0xc8
if-ne v0, p1, :cond_8
if-eqz p2, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public onAbort()V
.registers 6
invoke-super {p0}, Lcom/glympse/android/lib/HttpJob;->onAbort()V
iget-object v0, p0, Lcom/glympse/android/lib/bh;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isStarted()Z
move-result v0
if-nez v0, :cond_c
:goto_b
return-void
:cond_c
iget-object v0, p0, Lcom/glympse/android/lib/bh;->kp:Lcom/glympse/android/lib/GImagePrivate;
const/4 v1, 0x3
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GImagePrivate;->setState(I)V
iget-object v0, p0, Lcom/glympse/android/lib/bh;->kp:Lcom/glympse/android/lib/GImagePrivate;
iget-object v1, p0, Lcom/glympse/android/lib/bh;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/4 v2, 0x7
const/4 v3, 0x1
iget-object v4, p0, Lcom/glympse/android/lib/bh;->kp:Lcom/glympse/android/lib/GImagePrivate;
invoke-interface {v0, v1, v2, v3, v4}, Lcom/glympse/android/lib/GImagePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
goto :goto_b
.end method
.method public onComplete()V
.registers 6
const/4 v4, 0x7
const/4 v3, 0x1
invoke-super {p0}, Lcom/glympse/android/lib/HttpJob;->onComplete()V
iget-object v0, p0, Lcom/glympse/android/lib/bh;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isStarted()Z
move-result v0
if-nez v0, :cond_e
:goto_d
:cond_d
return-void
:cond_e
iget-object v0, p0, Lcom/glympse/android/lib/bh;->kt:Lcom/glympse/android/hal/GDrawablePrivate;
if-nez v0, :cond_2a
iget v0, p0, Lcom/glympse/android/lib/bh;->_failures:I
const/4 v1, 0x5
if-le v0, v1, :cond_d
iget-object v0, p0, Lcom/glympse/android/lib/bh;->kp:Lcom/glympse/android/lib/GImagePrivate;
const/4 v1, 0x3
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GImagePrivate;->setState(I)V
iget-object v0, p0, Lcom/glympse/android/lib/bh;->kp:Lcom/glympse/android/lib/GImagePrivate;
iget-object v1, p0, Lcom/glympse/android/lib/bh;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget-object v2, p0, Lcom/glympse/android/lib/bh;->kp:Lcom/glympse/android/lib/GImagePrivate;
invoke-interface {v0, v1, v4, v3, v2}, Lcom/glympse/android/lib/GImagePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
invoke-virtual {p0}, Lcom/glympse/android/lib/bh;->abort()V
goto :goto_d
:cond_2a
iget-object v0, p0, Lcom/glympse/android/lib/bh;->kp:Lcom/glympse/android/lib/GImagePrivate;
iget-object v1, p0, Lcom/glympse/android/lib/bh;->kt:Lcom/glympse/android/hal/GDrawablePrivate;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GImagePrivate;->setDrawable(Lcom/glympse/android/core/GDrawable;)V
iget-object v0, p0, Lcom/glympse/android/lib/bh;->kp:Lcom/glympse/android/lib/GImagePrivate;
const/4 v1, 0x2
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GImagePrivate;->setState(I)V
iget-object v0, p0, Lcom/glympse/android/lib/bh;->kp:Lcom/glympse/android/lib/GImagePrivate;
iget-object v1, p0, Lcom/glympse/android/lib/bh;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget-object v2, p0, Lcom/glympse/android/lib/bh;->kp:Lcom/glympse/android/lib/GImagePrivate;
invoke-interface {v0, v1, v4, v3, v2}, Lcom/glympse/android/lib/GImagePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
goto :goto_d
.end method
.method public onPreProcess()V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/bh;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;
iget-object v1, p0, Lcom/glympse/android/lib/bh;->kq:Ljava/lang/String;
iget-object v2, p0, Lcom/glympse/android/lib/bh;->kr:Ljava/lang/String;
iget-object v3, p0, Lcom/glympse/android/lib/bh;->ks:Ljava/lang/String;
invoke-static {v0, v1, v2, v3}, Lcom/glympse/android/lib/kd;->a(Lcom/glympse/android/hal/GHttpConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public onProcessResponse()V
.registers 3
invoke-virtual {p0}, Lcom/glympse/android/lib/bh;->isSucceeded()Z
move-result v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
iget-boolean v0, p0, Lcom/glympse/android/lib/bh;->ko:Z
if-eqz v0, :cond_32
iget-object v0, p0, Lcom/glympse/android/lib/bh;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;
const-string v1, "Content-Type"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/hal/GHttpConnection;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_32
const-string v1, "application/json"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_32
iget-object v0, p0, Lcom/glympse/android/lib/bh;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;
invoke-interface {v0}, Lcom/glympse/android/hal/GHttpConnection;->getResponseDataString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/lib/Debug;->dumpPackets(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/glympse/android/lib/bh;->abort()V
goto :goto_6
:cond_32
iget-object v0, p0, Lcom/glympse/android/lib/bh;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;
invoke-static {v0}, Lcom/glympse/android/lib/kd;->a(Lcom/glympse/android/hal/GHttpConnection;)Lcom/glympse/android/hal/GDrawablePrivate;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/bh;->kt:Lcom/glympse/android/hal/GDrawablePrivate;
goto :goto_6
.end method