.class  Lcom/google/android/gms/panorama/Panorama$b$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/panorama/Panorama$PanoramaResult;
.field final synthetic QA:Lcom/google/android/gms/panorama/Panorama$b;
.field final synthetic vb:Lcom/google/android/gms/common/api/Status;
.method constructor <init>(Lcom/google/android/gms/panorama/Panorama$b;Lcom/google/android/gms/common/api/Status;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/panorama/Panorama$b$1;->QA:Lcom/google/android/gms/panorama/Panorama$b;
iput-object p2, p0, Lcom/google/android/gms/panorama/Panorama$b$1;->vb:Lcom/google/android/gms/common/api/Status;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/panorama/Panorama$b$1;->vb:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.method public getViewerIntent()Landroid/content/Intent;
.registers 2
const/4 v0, 0x0
return-object v0
.end method