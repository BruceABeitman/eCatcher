.class final Lcom/google/android/gms/plus/internal/e$g;
.super Lcom/google/android/gms/plus/internal/a;
.field private final QI:Lcom/google/android/gms/common/api/a$c;
.field final synthetic Rf:Lcom/google/android/gms/plus/internal/e;
.method public constructor <init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$c;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/plus/internal/e$g;->Rf:Lcom/google/android/gms/plus/internal/e;
invoke-direct {p0}, Lcom/google/android/gms/plus/internal/a;-><init>()V
iput-object p2, p0, Lcom/google/android/gms/plus/internal/e$g;->QI:Lcom/google/android/gms/common/api/a$c;
return-void
.end method
.method public final d(ILandroid/os/Bundle;)V
.registers 8
const/4 v1, 0x0
if-eqz p2, :cond_1f
const-string v0, "pendingIntent"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/app/PendingIntent;
:goto_b
new-instance v2, Lcom/google/android/gms/common/api/Status;
invoke-direct {v2, p1, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V
iget-object v0, p0, Lcom/google/android/gms/plus/internal/e$g;->Rf:Lcom/google/android/gms/plus/internal/e;
new-instance v1, Lcom/google/android/gms/plus/internal/e$h;
iget-object v3, p0, Lcom/google/android/gms/plus/internal/e$g;->Rf:Lcom/google/android/gms/plus/internal/e;
iget-object v4, p0, Lcom/google/android/gms/plus/internal/e$g;->QI:Lcom/google/android/gms/common/api/a$c;
invoke-direct {v1, v3, v4, v2}, Lcom/google/android/gms/plus/internal/e$h;-><init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/api/Status;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/internal/eh$b;)V
return-void
:cond_1f
move-object v0, v1
goto :goto_b
.end method