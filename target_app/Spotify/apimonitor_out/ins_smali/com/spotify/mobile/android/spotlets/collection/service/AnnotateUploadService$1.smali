.class final Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/session/d;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService$1;->a:Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/service/session/a;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService$1;->a:Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/session/a;->h()Z
move-result v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->a(Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;Z)Z
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService$1;->a:Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->a(Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;)Ljava/util/concurrent/Semaphore;
move-result-object v0
invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
return-void
.end method