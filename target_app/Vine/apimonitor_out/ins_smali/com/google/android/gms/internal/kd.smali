.class public Lcom/google/android/gms/internal/kd;
.super Lcom/google/android/gms/internal/ki;
.implements Lcom/google/android/gms/panorama/PanoramaApi$a;
.field private final abg:I
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;I)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ki;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;)V
iput p3, p0, Lcom/google/android/gms/internal/kd;->abg:I
return-void
.end method
.method public bridge synthetic getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
invoke-super {p0}, Lcom/google/android/gms/internal/ki;->getStatus()Lcom/google/android/gms/common/api/Status;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic getViewerIntent()Landroid/content/Intent;
.registers 2
invoke-super {p0}, Lcom/google/android/gms/internal/ki;->getViewerIntent()Landroid/content/Intent;
move-result-object v0
return-object v0
.end method