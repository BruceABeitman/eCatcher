.class  Lcom/google/android/gms/internal/kg$2;
.super Lcom/google/android/gms/internal/kg$b;
.field final synthetic abh:Landroid/net/Uri;
.field final synthetic abj:Lcom/google/android/gms/internal/kg;
.method constructor <init>(Lcom/google/android/gms/internal/kg;Landroid/net/Uri;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/kg$2;->abj:Lcom/google/android/gms/internal/kg;
iput-object p2, p0, Lcom/google/android/gms/internal/kg$2;->abh:Landroid/net/Uri;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/kg$b;-><init>(Lcom/google/android/gms/internal/kg$1;)V
return-void
.end method
.method protected a(Landroid/content/Context;Lcom/google/android/gms/internal/kf;)V
.registers 7
new-instance v0, Lcom/google/android/gms/internal/kg$c;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/kg$c;-><init>(Lcom/google/android/gms/common/api/a$d;)V
iget-object v1, p0, Lcom/google/android/gms/internal/kg$2;->abh:Landroid/net/Uri;
const/4 v2, 0x0
const/4 v3, 0x0
invoke-interface {p2, v0, v1, v2, v3}, Lcom/google/android/gms/internal/kf;->a(Lcom/google/android/gms/internal/ke;Landroid/net/Uri;Landroid/os/Bundle;Z)V
return-void
.end method