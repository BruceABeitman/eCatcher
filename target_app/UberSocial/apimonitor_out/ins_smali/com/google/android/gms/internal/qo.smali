.class final Lcom/google/android/gms/internal/qo;
.super Lcom/google/android/gms/internal/qh;
.field final synthetic a:Lcom/google/android/gms/internal/qm;
.field private final b:Lcom/google/android/gms/common/api/t;
.field private final c:Lcom/google/android/gms/common/api/t;
.field private final d:Landroid/net/Uri;
.method public constructor <init>(Lcom/google/android/gms/internal/qm;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/t;Landroid/net/Uri;)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/internal/qo;->a:Lcom/google/android/gms/internal/qm;
invoke-direct {p0}, Lcom/google/android/gms/internal/qh;-><init>()V
iput-object p2, p0, Lcom/google/android/gms/internal/qo;->b:Lcom/google/android/gms/common/api/t;
iput-object p3, p0, Lcom/google/android/gms/internal/qo;->c:Lcom/google/android/gms/common/api/t;
iput-object p4, p0, Lcom/google/android/gms/internal/qo;->d:Landroid/net/Uri;
return-void
.end method
.method public a(ILandroid/os/Bundle;ILandroid/content/Intent;)V
.registers 12
const/4 v1, 0x0
iget-object v0, p0, Lcom/google/android/gms/internal/qo;->d:Landroid/net/Uri;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/google/android/gms/internal/qo;->a:Lcom/google/android/gms/internal/qm;
invoke-virtual {v0}, Lcom/google/android/gms/internal/qm;->p()Landroid/content/Context;
move-result-object v0
iget-object v2, p0, Lcom/google/android/gms/internal/qo;->d:Landroid/net/Uri;
const/4 v3, 0x1
invoke-virtual {v0, v2, v3}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V
:cond_11
if-eqz p2, :cond_48
const-string v0, "pendingIntent"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/app/PendingIntent;
:goto_1b
new-instance v3, Lcom/google/android/gms/common/api/Status;
invoke-direct {v3, p1, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V
iget-object v0, p0, Lcom/google/android/gms/internal/qo;->c:Lcom/google/android/gms/common/api/t;
if-eqz v0, :cond_33
iget-object v0, p0, Lcom/google/android/gms/internal/qo;->a:Lcom/google/android/gms/internal/qm;
new-instance v1, Lcom/google/android/gms/internal/qp;
iget-object v2, p0, Lcom/google/android/gms/internal/qo;->a:Lcom/google/android/gms/internal/qm;
iget-object v4, p0, Lcom/google/android/gms/internal/qo;->c:Lcom/google/android/gms/common/api/t;
invoke-direct {v1, v2, v4, v3, p4}, Lcom/google/android/gms/internal/qp;-><init>(Lcom/google/android/gms/internal/qm;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qm;->a(Lcom/google/android/gms/internal/gn;)V
:goto_32
:cond_32
return-void
:cond_33
iget-object v0, p0, Lcom/google/android/gms/internal/qo;->b:Lcom/google/android/gms/common/api/t;
if-eqz v0, :cond_32
iget-object v6, p0, Lcom/google/android/gms/internal/qo;->a:Lcom/google/android/gms/internal/qm;
new-instance v0, Lcom/google/android/gms/internal/qn;
iget-object v1, p0, Lcom/google/android/gms/internal/qo;->a:Lcom/google/android/gms/internal/qm;
iget-object v2, p0, Lcom/google/android/gms/internal/qo;->b:Lcom/google/android/gms/common/api/t;
move v4, p3
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/qn;-><init>(Lcom/google/android/gms/internal/qm;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/Status;ILandroid/content/Intent;)V
invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/qm;->a(Lcom/google/android/gms/internal/gn;)V
goto :goto_32
:cond_48
move-object v0, v1
goto :goto_1b
.end method