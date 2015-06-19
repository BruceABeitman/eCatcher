.class  Lcom/google/android/gms/internal/ki;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/panorama/PanoramaApi$PanoramaResult;
.field private final abl:Landroid/content/Intent;
.field private final yw:Lcom/google/android/gms/common/api/Status;
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/google/android/gms/internal/hn;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/Status;
iput-object v0, p0, Lcom/google/android/gms/internal/ki;->yw:Lcom/google/android/gms/common/api/Status;
iput-object p2, p0, Lcom/google/android/gms/internal/ki;->abl:Landroid/content/Intent;
return-void
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ki;->yw:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.method public getViewerIntent()Landroid/content/Intent;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ki;->abl:Landroid/content/Intent;
return-object v0
.end method