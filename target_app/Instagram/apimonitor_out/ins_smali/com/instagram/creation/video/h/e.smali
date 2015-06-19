.class public final Lcom/instagram/creation/video/h/e;
.super Ljava/lang/Object;
.source "MediaRecorderProxy.java"
.implements Lcom/instagram/creation/video/h/a;
.field private final a:Landroid/media/MediaRecorder;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/media/MediaRecorder;
invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/video/h/e;->a:Landroid/media/MediaRecorder;
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/h/e;->a:Landroid/media/MediaRecorder;
invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
return-void
.end method
.method public final a(I)V
.registers 4
iget-object v0, p0, Lcom/instagram/creation/video/h/e;->a:Landroid/media/MediaRecorder;
const/4 v1, 0x5
invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V
return-void
.end method
.method public final a(Landroid/hardware/Camera;)V
.registers 3
iget-object v0, p0, Lcom/instagram/creation/video/h/e;->a:Landroid/media/MediaRecorder;
invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V
return-void
.end method
.method public final a(Landroid/media/CamcorderProfile;)V
.registers 3
iget-object v0, p0, Lcom/instagram/creation/video/h/e;->a:Landroid/media/MediaRecorder;
invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V
return-void
.end method
.method public final a(Landroid/view/Surface;)V
.registers 3
iget-object v0, p0, Lcom/instagram/creation/video/h/e;->a:Landroid/media/MediaRecorder;
invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V
return-void
.end method
.method public final a(Lcom/instagram/creation/video/h/b;)V
.registers 4
iget-object v0, p0, Lcom/instagram/creation/video/h/e;->a:Landroid/media/MediaRecorder;
new-instance v1, Lcom/instagram/creation/video/h/f;
invoke-direct {v1, p0, p1}, Lcom/instagram/creation/video/h/f;-><init>(Lcom/instagram/creation/video/h/e;Lcom/instagram/creation/video/h/b;)V
invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V
return-void
.end method
.method public final a(Lcom/instagram/creation/video/h/c;)V
.registers 4
iget-object v0, p0, Lcom/instagram/creation/video/h/e;->a:Landroid/media/MediaRecorder;
new-instance v1, Lcom/instagram/creation/video/h/g;
invoke-direct {v1, p0, p1}, Lcom/instagram/creation/video/h/g;-><init>(Lcom/instagram/creation/video/h/e;Lcom/instagram/creation/video/h/c;)V
invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/instagram/creation/video/h/e;->a:Landroid/media/MediaRecorder;
invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V
return-void
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/h/e;->a:Landroid/media/MediaRecorder;
invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
return-void
.end method
.method public final b(I)V
.registers 4
iget-object v0, p0, Lcom/instagram/creation/video/h/e;->a:Landroid/media/MediaRecorder;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V
return-void
.end method
.method public final c()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/h/e;->a:Landroid/media/MediaRecorder;
invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
return-void
.end method
.method public final d()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/h/e;->a:Landroid/media/MediaRecorder;
invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V
return-void
.end method
.method public final e()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/h/e;->a:Landroid/media/MediaRecorder;
invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V
return-void
.end method