.class final Lcom/google/android/gms/drive/Drive$2;
.super Lcom/google/android/gms/drive/Drive$a;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/drive/Drive$a;-><init>()V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$ApiOptions;)Landroid/os/Bundle;
.registers 3
check-cast p1, Lcom/google/android/gms/drive/Drive$b;
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/Drive$2;->a(Lcom/google/android/gms/drive/Drive$b;)Landroid/os/Bundle;
move-result-object v0
return-object v0
.end method
.method protected a(Lcom/google/android/gms/drive/Drive$b;)Landroid/os/Bundle;
.registers 3
if-nez p1, :cond_8
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
:goto_7
return-object v0
:cond_8
invoke-virtual {p1}, Lcom/google/android/gms/drive/Drive$b;->ge()Landroid/os/Bundle;
move-result-object v0
goto :goto_7
.end method