.class final Lcom/google/android/gms/plus/internal/e$b;
.super Lcom/google/android/gms/plus/internal/a;
.field private final abI:Lcom/google/android/gms/common/api/a$d;
.field final synthetic abJ:Lcom/google/android/gms/plus/internal/e;
.method public constructor <init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$d;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/plus/internal/e$b;->abJ:Lcom/google/android/gms/plus/internal/e;
invoke-direct {p0}, Lcom/google/android/gms/plus/internal/a;-><init>()V
iput-object p2, p0, Lcom/google/android/gms/plus/internal/e$b;->abI:Lcom/google/android/gms/common/api/a$d;
return-void
.end method
.method public a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Ljava/lang/String;)V
.registers 12
const/4 v1, 0x0
invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->eP()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_41
invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->eP()Landroid/os/Bundle;
move-result-object v0
const-string v2, "pendingIntent"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/app/PendingIntent;
:goto_13
new-instance v3, Lcom/google/android/gms/common/api/Status;
invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I
move-result v2
invoke-direct {v3, v2, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V
invoke-virtual {v3}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z
move-result v0
if-nez v0, :cond_3f
if-eqz p1, :cond_3f
invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z
move-result v0
if-nez v0, :cond_2d
invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V
:cond_2d
move-object v4, v1
:goto_2e
iget-object v7, p0, Lcom/google/android/gms/plus/internal/e$b;->abJ:Lcom/google/android/gms/plus/internal/e;
new-instance v0, Lcom/google/android/gms/plus/internal/e$c;
iget-object v1, p0, Lcom/google/android/gms/plus/internal/e$b;->abJ:Lcom/google/android/gms/plus/internal/e;
iget-object v2, p0, Lcom/google/android/gms/plus/internal/e$b;->abI:Lcom/google/android/gms/common/api/a$d;
move-object v5, p2
move-object v6, p3
invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/plus/internal/e$c;-><init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v7, v0}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/internal/hc$b;)V
return-void
:cond_3f
move-object v4, p1
goto :goto_2e
:cond_41
move-object v0, v1
goto :goto_13
.end method