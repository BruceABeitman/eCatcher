.class final Lcom/google/android/gms/drive/Drive$1;
.super Lcom/google/android/gms/drive/Drive$a;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/drive/Drive$a;-><init>()V
return-void
.end method
.method protected a(Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;)Landroid/os/Bundle;
.registers 3
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
return-object v0
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$ApiOptions;)Landroid/os/Bundle;
.registers 3
check-cast p1, Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/Drive$1;->a(Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;)Landroid/os/Bundle;
move-result-object v0
return-object v0
.end method