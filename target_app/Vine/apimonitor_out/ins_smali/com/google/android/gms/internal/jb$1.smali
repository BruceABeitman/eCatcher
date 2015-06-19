.class  Lcom/google/android/gms/internal/jb$1;
.super Lcom/google/android/gms/internal/jb$a;
.field final synthetic Vq:J
.field final synthetic Vr:Landroid/app/PendingIntent;
.field final synthetic Vs:Lcom/google/android/gms/internal/jb;
.method constructor <init>(Lcom/google/android/gms/internal/jb;JLandroid/app/PendingIntent;)V
.registers 6
iput-object p1, p0, Lcom/google/android/gms/internal/jb$1;->Vs:Lcom/google/android/gms/internal/jb;
iput-wide p2, p0, Lcom/google/android/gms/internal/jb$1;->Vq:J
iput-object p4, p0, Lcom/google/android/gms/internal/jb$1;->Vr:Landroid/app/PendingIntent;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/jb$a;-><init>(Lcom/google/android/gms/internal/jb$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/jh;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jb$1;->a(Lcom/google/android/gms/internal/jh;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/jh;)V
.registers 5
iget-wide v0, p0, Lcom/google/android/gms/internal/jb$1;->Vq:J
iget-object v2, p0, Lcom/google/android/gms/internal/jb$1;->Vr:Landroid/app/PendingIntent;
invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/jh;->requestActivityUpdates(JLandroid/app/PendingIntent;)V
sget-object v0, Lcom/google/android/gms/common/api/Status;->Ek:Lcom/google/android/gms/common/api/Status;
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jb$1;->b(Lcom/google/android/gms/common/api/Result;)V
return-void
.end method