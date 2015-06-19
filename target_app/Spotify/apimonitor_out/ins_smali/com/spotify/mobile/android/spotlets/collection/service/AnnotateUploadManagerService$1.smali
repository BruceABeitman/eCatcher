.class final Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/session/d;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService$1;->a:Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/service/session/a;)V
.registers 6
const/4 v3, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService$1;->a:Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService;->a(Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService;)Landroid/os/Handler;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/session/a;->h()Z
move-result v0
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService$1;->a:Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService;->a(Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadManagerService;)Landroid/os/Handler;
move-result-object v0
const-wide/16 v1, 0x3a98
invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
:cond_1b
return-void
.end method